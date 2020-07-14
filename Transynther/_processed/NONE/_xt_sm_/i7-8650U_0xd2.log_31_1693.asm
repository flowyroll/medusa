.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1216e, %rsi
lea addresses_WC_ht+0x862e, %rdi
nop
nop
nop
nop
add $56867, %rbx
mov $111, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $54208, %rax
lea addresses_normal_ht+0x31bd, %rsi
lea addresses_UC_ht+0x16aae, %rdi
dec %r14
mov $43, %rcx
rep movsw
nop
nop
nop
xor $58069, %rdi
lea addresses_D_ht+0x3fb2, %rax
nop
nop
nop
nop
nop
xor $18672, %rcx
movb (%rax), %bl
nop
nop
nop
nop
dec %rcx
lea addresses_A_ht+0x1322, %r14
nop
nop
nop
xor %r8, %r8
vmovups (%r14), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %rax
nop
and %r8, %r8
lea addresses_D_ht+0x6eae, %rsi
lea addresses_UC_ht+0x43da, %rdi
nop
nop
dec %r13
mov $76, %rcx
rep movsb
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x15764, %rsi
lea addresses_WC_ht+0x16ae, %rdi
nop
add %r13, %r13
mov $95, %rcx
rep movsw
xor $47695, %rbx
lea addresses_UC_ht+0xeeae, %rsi
nop
nop
nop
sub $43253, %rcx
movw $0x6162, (%rsi)
sub %r13, %r13
lea addresses_D_ht+0xe04e, %rbx
nop
nop
sub %rdi, %rdi
movw $0x6162, (%rbx)
nop
nop
dec %rsi
lea addresses_WT_ht+0x1834a, %r8
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r8)
cmp %rcx, %rcx
lea addresses_D_ht+0x15d90, %r14
nop
nop
nop
and %r8, %r8
movl $0x61626364, (%r14)
sub $63510, %rax
lea addresses_A_ht+0x1dae, %rbx
cmp $36351, %r8
vmovups (%rbx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r14
and %r8, %r8
lea addresses_normal_ht+0x3bfe, %r13
and %rdi, %rdi
mov (%r13), %rsi
and $2073, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r15
push %r9
push %rbp
push %rbx
push %rdi

// Store
lea addresses_normal+0x17aae, %r15
nop
nop
nop
nop
nop
inc %rbp
movw $0x5152, (%r15)

// Exception!!!
nop
nop
nop
nop
mov (0), %r14
nop
nop
nop
nop
sub $10815, %r9

// Store
lea addresses_normal+0x10eae, %r10
nop
nop
cmp $50269, %r14
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%r10)
nop
xor $56453, %rbp

// Store
lea addresses_D+0x152ae, %r15
nop
cmp %rdi, %rdi
movl $0x51525354, (%r15)
nop
and %r10, %r10

// Store
lea addresses_RW+0x19aae, %rbp
cmp %r9, %r9
movb $0x51, (%rbp)
cmp $41662, %rbp

// Store
mov $0xfee, %r14
nop
and %rdi, %rdi
movl $0x51525354, (%r14)
add %r9, %r9

// Store
lea addresses_WC+0xac5e, %r15
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
cmp $30596, %rbp

// Store
lea addresses_US+0x1e5e, %r15
nop
nop
nop
nop
add $21398, %rbp
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%r15)
nop
nop
nop
nop
add %r14, %r14

// Store
mov $0x261fe70000000c6c, %r9
add %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%r9)
nop
nop
sub %r9, %r9

// Faulty Load
lea addresses_RW+0x19aae, %rdi
clflush (%rdi)
nop
nop
inc %r10
movb (%rdi), %r9b
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'51': 31}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
