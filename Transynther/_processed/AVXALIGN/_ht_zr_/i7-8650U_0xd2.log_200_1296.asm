.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x1ab87, %r11
nop
nop
cmp $44662, %r10
movw $0x6162, (%r11)
add %r10, %r10
lea addresses_normal_ht+0xf787, %rsi
lea addresses_D_ht+0x20f7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %rdx
mov $46, %rcx
rep movsq
nop
nop
nop
cmp $53069, %rcx
lea addresses_UC_ht+0x8607, %rsi
nop
nop
nop
sub %r15, %r15
movb (%rsi), %cl
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x4af, %rdx
nop
nop
nop
nop
add $61253, %r11
mov (%rdx), %r15w
nop
nop
sub $47940, %rdi
lea addresses_WT_ht+0x12287, %rsi
lea addresses_WT_ht+0x6b07, %rdi
clflush (%rdi)
dec %rbx
mov $76, %rcx
rep movsb
nop
dec %rbx
lea addresses_normal_ht+0xfe07, %rsi
clflush (%rsi)
nop
nop
nop
nop
cmp %r10, %r10
movl $0x61626364, (%rsi)
nop
nop
nop
nop
add %rdx, %rdx
lea addresses_A_ht+0x15d2b, %rbx
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %rax
push %rdx
push %rsi

// Store
lea addresses_UC+0x11704, %rdx
nop
xor %r13, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
nop
nop
and $19414, %r11

// Store
mov $0xa07, %r11
nop
add %rsi, %rsi
movb $0x51, (%r11)
sub $33722, %r13

// Store
lea addresses_PSE+0xfe03, %rdx
nop
nop
nop
nop
sub %r10, %r10
movb $0x51, (%rdx)
nop
nop
and %rdx, %rdx

// Store
lea addresses_A+0x18887, %r11
clflush (%r11)
nop
nop
sub %r13, %r13
movl $0x51525354, (%r11)
nop
nop
nop
nop
sub $50952, %r12

// Store
lea addresses_WT+0x17507, %r11
nop
nop
nop
nop
add $45862, %r12
movl $0x51525354, (%r11)
nop
nop
nop
sub $4669, %r12

// Store
lea addresses_D+0x1fa07, %r11
nop
and $9660, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r11)
nop
nop
dec %r12

// Faulty Load
lea addresses_WT+0x18e07, %r10
nop
nop
nop
nop
nop
and %rax, %rax
vmovaps (%r10), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r12
lea oracles, %r11
and $0xff, %r12
shlq $12, %r12
mov (%r11,%r12,1), %r12
pop %rsi
pop %rdx
pop %rax
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 1, '44': 166, '49': 33}
00 44 44 44 49 44 44 44 44 44 44 44 44 44 49 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 49 44 44 49 49 49 44 44 44 44 44 49 44 44 44 44 44 44 49 44 44 44 44 44 44 44 49 44 44 44 49 44 49 44 44 49 49 44 44 44 44 44 49 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 49 49 44 44 44 49 44 44 44 44 49 44 49 44 44 49 44 44 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 44 49 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 49 49 49 44 44 44 44 44 44 44 44
*/
