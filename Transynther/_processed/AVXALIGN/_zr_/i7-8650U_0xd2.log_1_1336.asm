.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1502b, %r14
nop
dec %rdi
movb $0x61, (%r14)
nop
nop
nop
dec %rax
lea addresses_UC_ht+0xc5fb, %rdx
cmp %rdi, %rdi
mov $0x6162636465666768, %rax
movq %rax, (%rdx)
nop
nop
nop
nop
nop
xor $35834, %rdx
lea addresses_A_ht+0xa9f3, %rsi
lea addresses_WC_ht+0x16a13, %rdi
nop
nop
cmp $26356, %r11
mov $48, %rcx
rep movsl
nop
nop
xor $29238, %r11
lea addresses_WT_ht+0xf7db, %rsi
lea addresses_A_ht+0xd693, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rbx, %rbx
mov $44, %rcx
rep movsl
cmp %rcx, %rcx
lea addresses_normal_ht+0x1ff3, %r14
clflush (%r14)
nop
nop
cmp $35458, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%r14)
nop
nop
nop
nop
sub $52987, %rsi
lea addresses_WT_ht+0xa07b, %rsi
lea addresses_D_ht+0xa4f3, %rdi
nop
nop
nop
nop
nop
add %rdx, %rdx
mov $41, %rcx
rep movsw
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x131f3, %rdi
nop
nop
nop
and $60516, %rbx
mov (%rdi), %eax
nop
nop
sub $38245, %rdi
lea addresses_A_ht+0x155f3, %r11
cmp $14791, %rdx
mov (%r11), %r14w
nop
nop
nop
nop
nop
xor $7913, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi

// Load
lea addresses_WT+0x3df3, %rdi
nop
inc %rax
mov (%rdi), %r10
nop
nop
nop
nop
sub $32747, %rax

// Store
lea addresses_D+0x17673, %r10
inc %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
and %r10, %r10

// Load
lea addresses_UC+0xee83, %r11
clflush (%r11)
nop
nop
add $26727, %r12
mov (%r11), %r8d
nop
nop
nop
cmp $30622, %rdi

// Store
lea addresses_WT+0x181f3, %r10
nop
sub $51049, %r12
movb $0x51, (%r10)
nop
nop
xor %r12, %r12

// Store
lea addresses_PSE+0x81f3, %rdi
nop
sub %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm1
movups %xmm1, (%rdi)
nop
nop
and $40303, %r10

// Store
lea addresses_WC+0x1e1f3, %rcx
clflush (%rcx)
nop
inc %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm6
movups %xmm6, (%rcx)
nop
nop
xor %r11, %r11

// Store
lea addresses_UC+0x1b1f3, %r11
nop
nop
nop
nop
sub $869, %r12
mov $0x5152535455565758, %rcx
movq %rcx, (%r11)
and $11135, %rax

// Faulty Load
lea addresses_WC+0x1e1f3, %r10
clflush (%r10)
nop
nop
nop
nop
add %rax, %rax
vmovntdqa (%r10), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r8
lea oracles, %rcx
and $0xff, %r8
shlq $12, %r8
mov (%rcx,%r8,1), %r8
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'00': 1}
00
*/
