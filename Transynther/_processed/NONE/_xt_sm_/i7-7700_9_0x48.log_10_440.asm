.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11a29, %rsi
lea addresses_D_ht+0xb409, %rdi
nop
nop
nop
nop
dec %r10
mov $83, %rcx
rep movsb
nop
nop
nop
nop
nop
xor $31080, %r11
lea addresses_normal_ht+0x1ce23, %rdi
nop
nop
nop
inc %rsi
movb (%rdi), %r11b
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x173a9, %r14
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r14), %r10
nop
nop
nop
xor $32298, %rdi
lea addresses_UC_ht+0x3e29, %rcx
sub %r12, %r12
and $0xffffffffffffffc0, %rcx
movntdqa (%rcx), %xmm2
vpextrq $0, %xmm2, %rsi
nop
mfence
lea addresses_WT_ht+0x12cc2, %r10
and $15472, %r12
mov (%r10), %rdi
nop
nop
nop
nop
sub $4798, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rax
push %rcx

// Load
lea addresses_US+0x5429, %r11
nop
dec %r10
vmovups (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r8
sub %r10, %r10

// Store
mov $0x3a1, %rax
nop
nop
nop
add %r12, %r12
movb $0x51, (%rax)
nop
nop
nop
xor $26433, %rcx

// Store
lea addresses_UC+0x7d29, %r11
clflush (%r11)
nop
sub $38943, %r8
movw $0x5152, (%r11)
nop
nop
nop
cmp $8868, %rax

// Store
lea addresses_normal+0xca29, %r14
nop
nop
nop
nop
nop
sub %r12, %r12
movw $0x5152, (%r14)
nop
nop
nop
add %rax, %rax

// Store
lea addresses_WC+0x1b0a9, %r12
nop
nop
nop
cmp %r10, %r10
movb $0x51, (%r12)
nop
xor $58386, %r12

// Store
lea addresses_normal+0x19b69, %rax
nop
nop
sub $15877, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%rax)
nop
nop
nop
nop
add %r14, %r14

// Store
lea addresses_US+0x1c179, %r10
nop
nop
nop
nop
sub $32914, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%r10)
nop
inc %rax

// Faulty Load
lea addresses_normal+0xca29, %r14
nop
nop
nop
cmp $42094, %r11
movb (%r14), %al
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 1, 'size': 1, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'52': 10}
52 52 52 52 52 52 52 52 52 52
*/
