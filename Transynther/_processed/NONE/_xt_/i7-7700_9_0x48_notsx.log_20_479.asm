.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rdi
push %rdx
lea addresses_A_ht+0x254f, %r14
and %rdx, %rdx
mov $0x6162636465666768, %rax
movq %rax, %xmm4
movups %xmm4, (%r14)
dec %r8
lea addresses_UC_ht+0x1694f, %rdi
nop
nop
sub $30664, %r9
movw $0x6162, (%rdi)
nop
nop
nop
xor $20733, %r9
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rbp
push %rbx

// Load
lea addresses_normal+0xc1fb, %r15
nop
nop
nop
inc %rbx
movb (%r15), %r14b
nop
nop
nop
nop
and $15518, %r13

// Store
mov $0x2cf, %r10
clflush (%r10)
nop
nop
nop
nop
cmp $14974, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r10)
add $43740, %rbp

// Faulty Load
lea addresses_normal+0xb94f, %r15
nop
add $48993, %r14
mov (%r15), %ebx
lea oracles, %r15
and $0xff, %rbx
shlq $12, %rbx
mov (%r15,%rbx,1), %rbx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'34': 20}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
