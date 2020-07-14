.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1b4f2, %rsi
lea addresses_normal_ht+0x18002, %rdi
clflush (%rsi)
nop
nop
and $10613, %rax
mov $14, %rcx
rep movsq
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x24f2, %r13
nop
nop
nop
nop
nop
xor $35800, %r12
mov (%r13), %rcx
nop
nop
xor %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0x1ca9e, %r12
xor %rbx, %rbx
movb $0x51, (%r12)
and %r12, %r12

// Store
lea addresses_RW+0x9669, %r10
nop
nop
sub %rdx, %rdx
mov $0x5152535455565758, %r8
movq %r8, (%r10)
nop
xor $23412, %r15

// Load
lea addresses_D+0x1bbc7, %r8
nop
nop
nop
inc %r10
movups (%r8), %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
and %rdx, %rdx

// Load
lea addresses_D+0x19120, %r10
inc %r15
mov (%r10), %rdi
nop
nop
sub $17388, %r12

// Store
lea addresses_WC+0x6c30, %r15
nop
add $63420, %r8
mov $0x5152535455565758, %r12
movq %r12, (%r15)
nop
nop
nop
nop
nop
add %r10, %r10

// Store
lea addresses_D+0x1b672, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub %r12, %r12
movw $0x5152, (%rbx)
nop
nop
cmp %r12, %r12

// Store
lea addresses_A+0x164f2, %rdi
nop
nop
inc %r12
movb $0x51, (%rdi)
nop
nop
nop
nop
and $24506, %rbx

// Load
lea addresses_D+0x1c4f2, %r10
xor $38870, %rdx
movups (%r10), %xmm7
vpextrq $0, %xmm7, %r8
nop
sub $43686, %rbx

// Store
lea addresses_WT+0x1acf2, %rbx
nop
nop
nop
nop
nop
add $55114, %r12
mov $0x5152535455565758, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
nop
xor %r12, %r12

// Store
lea addresses_RW+0x11cf2, %r12
nop
nop
nop
add %rdx, %rdx
movb $0x51, (%r12)
nop
inc %rdi

// Faulty Load
lea addresses_A+0x164f2, %r12
clflush (%r12)
nop
nop
nop
nop
dec %rbx
vmovups (%r12), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rdx
pop %rdi
pop %rbx
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'00': 8}
00 00 00 00 00 00 00 00
*/
