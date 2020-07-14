.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x7b36, %rsi
lea addresses_A_ht+0xfc8a, %rdi
nop
add %r15, %r15
mov $112, %rcx
rep movsb
nop
add $12270, %rcx
lea addresses_A_ht+0x17b16, %rsi
lea addresses_WT_ht+0x14560, %rdi
cmp %r12, %r12
mov $13, %rcx
rep movsl
nop
sub %rcx, %rcx
lea addresses_WT_ht+0xc02e, %rsi
lea addresses_UC_ht+0x1a616, %rdi
nop
nop
nop
nop
dec %r12
mov $83, %rcx
rep movsb
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xca16, %rbx
nop
nop
xor %rsi, %rsi
movb (%rbx), %r15b
nop
and $48432, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WC+0x13cb6, %r15
nop
inc %rsi
mov $0x5152535455565758, %rbp
movq %rbp, (%r15)
and $47954, %r15

// Store
lea addresses_A+0x13216, %rdi
clflush (%rdi)
nop
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%rdi)
nop
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_WT+0xfe16, %rbx
clflush (%rbx)
nop
nop
nop
nop
add %rsi, %rsi
movw $0x5152, (%rbx)
nop
nop
xor %rcx, %rcx

// Store
lea addresses_RW+0x2096, %rsi
nop
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
movaps %xmm1, (%rsi)
xor %rsi, %rsi

// Faulty Load
lea addresses_US+0xa16, %rsi
nop
and $36338, %r15
vmovups (%rsi), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_RW', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 10}}
{'00': 1}
00
*/
