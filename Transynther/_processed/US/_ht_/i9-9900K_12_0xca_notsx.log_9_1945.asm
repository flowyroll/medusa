.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x131af, %rbp
cmp $3509, %rcx
mov (%rbp), %rdx
nop
sub $6028, %r15
lea addresses_WT_ht+0x19eb3, %rdi
nop
nop
add %rax, %rax
mov (%rdi), %r10w
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x16677, %rsi
lea addresses_WC_ht+0xd0eb, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $39521, %rax
mov $115, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $31464, %rcx
lea addresses_WT_ht+0x1ad69, %r10
nop
dec %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%r10)
nop
nop
nop
nop
xor $25577, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi

// Load
lea addresses_A+0x1caaf, %rbx
nop
nop
nop
nop
cmp %rax, %rax
movups (%rbx), %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
inc %rcx

// Store
lea addresses_UC+0x5eaf, %rdi
clflush (%rdi)
nop
nop
inc %r14
mov $0x5152535455565758, %rcx
movq %rcx, (%rdi)
nop
nop
xor $16249, %r14

// Faulty Load
lea addresses_US+0xbaaf, %r14
nop
nop
nop
and %r15, %r15
movups (%r14), %xmm7
vpextrq $1, %xmm7, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'45': 9}
45 45 45 45 45 45 45 45 45
*/
