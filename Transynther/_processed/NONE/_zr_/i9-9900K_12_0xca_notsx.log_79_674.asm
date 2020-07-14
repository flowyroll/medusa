.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1dca5, %rsi
lea addresses_WT_ht+0x3084, %rdi
nop
nop
nop
nop
xor %r9, %r9
mov $22, %rcx
rep movsq
and $16389, %r15
lea addresses_A_ht+0x1c9a6, %r10
nop
inc %rbp
mov $0x6162636465666768, %rcx
movq %rcx, (%r10)
nop
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0x12a, %rsi
lea addresses_WT_ht+0x85e4, %rdi
nop
nop
xor %r15, %r15
mov $80, %rcx
rep movsl
nop
nop
nop
dec %r15
lea addresses_D_ht+0x1e7a4, %r15
nop
nop
nop
nop
dec %rcx
movl $0x61626364, (%r15)
nop
sub %r15, %r15
lea addresses_normal_ht+0x1ede4, %rdi
nop
xor %r15, %r15
mov (%rdi), %esi
nop
nop
xor $17122, %r9
lea addresses_A_ht+0x15b24, %rbp
nop
nop
nop
nop
cmp %rcx, %rcx
movb $0x61, (%rbp)
nop
nop
nop
and $52642, %r9
lea addresses_A_ht+0xde4, %rdi
nop
nop
mfence
mov (%rdi), %r15d
nop
nop
nop
nop
nop
mfence
lea addresses_D_ht+0x1b764, %rsi
lea addresses_WC_ht+0xa5e4, %rdi
nop
nop
nop
nop
xor $54174, %r9
mov $23, %rcx
rep movsb
nop
nop
nop
nop
add $53280, %rbp
lea addresses_WT_ht+0x22c4, %rsi
lea addresses_normal_ht+0x155e4, %rdi
inc %r12
mov $66, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_normal_ht+0x3f8e, %rsi
lea addresses_WT_ht+0x6664, %rdi
clflush (%rsi)
clflush (%rdi)
nop
cmp $34056, %r9
mov $123, %rcx
rep movsl
nop
add $58005, %r15
lea addresses_UC_ht+0x10396, %rsi
lea addresses_UC_ht+0xee4, %rdi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $104, %rcx
rep movsb
nop
nop
nop
cmp $5432, %rcx
lea addresses_D_ht+0x1a272, %rcx
nop
nop
nop
nop
nop
sub $4933, %r10
mov (%rcx), %rbp
nop
nop
nop
nop
nop
cmp $18076, %r10
lea addresses_normal_ht+0x18948, %r10
nop
nop
nop
nop
nop
xor $52500, %r9
mov (%r10), %r12
nop
nop
dec %rbp
lea addresses_UC_ht+0x57e4, %rsi
lea addresses_WT_ht+0x1a3b4, %rdi
nop
nop
nop
nop
xor $34183, %r10
mov $116, %rcx
rep movsw
nop
nop
nop
add %r12, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi

// Store
lea addresses_normal+0x17944, %rcx
add $15472, %rdi
movb $0x51, (%rcx)
dec %rcx

// Store
lea addresses_RW+0x9824, %r8
nop
nop
xor $32646, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
nop
nop
dec %r8

// Load
lea addresses_D+0x17a74, %rcx
nop
nop
nop
xor %r12, %r12
mov (%rcx), %r14w
nop
nop
and %r9, %r9

// Store
lea addresses_PSE+0x13350, %rbx
nop
nop
nop
cmp $6856, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
and $47767, %r8

// Store
lea addresses_A+0x7ee4, %rcx
nop
nop
nop
nop
nop
and $28043, %r12
mov $0x5152535455565758, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rcx)
nop
nop
nop
nop
xor $27283, %r14

// Faulty Load
lea addresses_A+0x15de4, %rcx
nop
and $60510, %r14
mov (%rcx), %rdi
lea oracles, %rcx
and $0xff, %rdi
shlq $12, %rdi
mov (%rcx,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 4, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'00': 79}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
