.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %rbx
push %rdi
push %rsi
lea addresses_WT_ht+0x75c1, %r11
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%r11)
nop
nop
add $27694, %rbx
pop %rsi
pop %rdi
pop %rbx
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r8
push %rax
push %rbp
push %rbx
push %rdi

// Load
lea addresses_D+0x741, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
dec %r8
mov (%rbx), %rax
nop
nop
nop
cmp $4225, %rdi

// Store
lea addresses_WT+0x11c41, %rbx
dec %r12
movw $0x5152, (%rbx)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Store
mov $0x2024350000000a1b, %r13
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
vmovups %ymm5, (%r13)
and %r8, %r8

// Store
lea addresses_RW+0xe9b1, %rbx
nop
nop
nop
nop
and %r12, %r12
movw $0x5152, (%rbx)
nop
nop
nop
nop
dec %rbp

// Store
lea addresses_A+0x12441, %rbx
inc %rax
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
movups %xmm1, (%rbx)
nop
nop
nop
nop
nop
sub $62819, %rbx

// Store
lea addresses_WC+0x1349b, %r12
clflush (%r12)
nop
nop
nop
and $64201, %rbp
movl $0x51525354, (%r12)
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_A+0x1ea41, %r13
nop
nop
add %r8, %r8
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
sub $48140, %rdi

// Store
lea addresses_US+0x5641, %r12
nop
nop
nop
nop
nop
xor %rbp, %rbp
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
xor %r12, %r12

// Faulty Load
lea addresses_WT+0x11c41, %r8
cmp $7890, %rdi
vmovaps (%r8), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
lea oracles, %r13
and $0xff, %rax
shlq $12, %rax
mov (%r13,%rax,1), %rax
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 1}
00
*/
