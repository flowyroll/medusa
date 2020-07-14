.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xd521, %r13
nop
nop
nop
add %rax, %rax
movb $0x61, (%r13)
nop
nop
add %rcx, %rcx
lea addresses_WC_ht+0x9da1, %rsi
lea addresses_D_ht+0x1b821, %rdi
nop
nop
nop
cmp %r13, %r13
mov $79, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_D_ht+0x7521, %rdi
sub %r11, %r11
mov (%rdi), %rax
nop
xor $41085, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %r8
push %rbx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x14b91, %rsi
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r13
movq %r13, (%rsi)
nop
and %r12, %r12

// Store
lea addresses_D+0xd421, %rbx
nop
nop
nop
xor $3251, %r8
movb $0x51, (%rbx)
nop
nop
nop
nop
inc %r13

// Store
lea addresses_WT+0x11721, %r15
nop
nop
add %rsi, %rsi
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
nop
nop
nop
nop
and %r15, %r15

// Store
mov $0x4a7fcd0000000ce9, %r8
nop
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
inc %r12

// Store
lea addresses_PSE+0x6021, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
and $23290, %r13
movw $0x5152, (%rbx)
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_A+0x5a11, %rbx
nop
nop
nop
add $41202, %rdi
movl $0x51525354, (%rbx)
cmp %r13, %r13

// Load
mov $0x741ced00000007b1, %r12
nop
nop
nop
add %r13, %r13
mov (%r12), %edi
nop
inc %r12

// Faulty Load
lea addresses_UC+0xb521, %r15
nop
nop
nop
nop
nop
cmp %r12, %r12
vmovups (%r15), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %r12
and $0xff, %r8
shlq $12, %r8
mov (%r12,%r8,1), %r8
pop %rsi
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 7, 'size': 8, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 2, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': True, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 10, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'48': 178, '00': 98}
48 00 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 00 48 00 48 48 48 48 00 00 00 00 00 48 00 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 00 00 48 48 00 48 48 48 00 48 48 48 48 00 48 00 48 00 00 48 48 48 00 48 00 00 00 48 48 00 00 48 48 00 48 48 48 48 48 48 48 00 00 00 48 00 48 48 48 48 48 48 00 48 00 00 48 48 00 48 48 48 00 00 48 48 48 00 48 48 48 48 48 00 48 00 48 00 00 48 00 48 48 00 00 00 48 48 48 48 48 48 00 48 00 48 48 48 00 48 00 48 48 00 48 00 00 48 00 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 00 00 00 00 00 48 48 00 48 48 48 00 48 00 48 48 00 00 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 00 00 48 00 48 48 48 48 00 48 00 48 48 48 00 48 48 00 00 48 48 48 48 00 00 00 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 00 00 48 48 00 00 48 48 48 00 48 00 00 00 00 00 00 00 00 00 00 48 00 48
*/
