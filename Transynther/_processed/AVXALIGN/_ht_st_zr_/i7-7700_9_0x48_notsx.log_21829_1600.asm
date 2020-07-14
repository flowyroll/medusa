.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1c963, %rbx
nop
nop
nop
add %rdi, %rdi
movups (%rbx), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1336b, %r10
nop
nop
nop
nop
nop
add %rdi, %rdi
movl $0x61626364, (%r10)
nop
nop
nop
sub $13565, %rdi
lea addresses_A_ht+0xae6b, %rsi
lea addresses_WC_ht+0x968b, %rdi
nop
nop
nop
and %r13, %r13
mov $107, %rcx
rep movsw
nop
nop
nop
add $28281, %r13
lea addresses_WC_ht+0x5ba, %rsi
lea addresses_WT_ht+0xda7b, %rdi
nop
nop
xor $10290, %r12
mov $123, %rcx
rep movsb
nop
xor $21770, %r13
lea addresses_WT_ht+0x338b, %rcx
nop
and $146, %r15
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x838b, %r15
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
vmovups %ymm1, (%r15)
nop
nop
nop
sub $44237, %rbx
lea addresses_UC_ht+0xa837, %r12
nop
nop
nop
nop
add %r10, %r10
movw $0x6162, (%r12)
cmp %r12, %r12
lea addresses_WC_ht+0x5a4b, %rsi
lea addresses_D_ht+0x5f2b, %rdi
nop
nop
add %r10, %r10
mov $99, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x14a1b, %rsi
lea addresses_UC_ht+0xac8b, %rdi
clflush (%rsi)
nop
nop
nop
nop
inc %rbx
mov $78, %rcx
rep movsw
nop
nop
nop
dec %r10
lea addresses_UC_ht+0x1948b, %r13
nop
nop
nop
sub $47165, %r10
movw $0x6162, (%r13)
nop
and $46174, %rsi
lea addresses_normal_ht+0x368b, %r15
nop
nop
nop
nop
nop
dec %rsi
movl $0x61626364, (%r15)
sub %r10, %r10
lea addresses_normal_ht+0x23db, %r10
nop
cmp %rsi, %rsi
mov (%r10), %r13
nop
inc %r12
lea addresses_UC_ht+0x500b, %rsi
lea addresses_normal_ht+0xe38b, %rdi
nop
nop
nop
nop
dec %r12
mov $98, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WT_ht+0x5d8b, %rcx
nop
nop
nop
nop
nop
sub $15567, %r15
movl $0x61626364, (%rcx)
nop
nop
nop
nop
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_WC+0x13f4b, %rsi
lea addresses_normal+0xb8b, %rdi
nop
nop
nop
nop
sub $60504, %r9
mov $83, %rcx
rep movsq
xor $18177, %r9

// Load
mov $0x117bfd0000000a8b, %r14
clflush (%r14)
nop
xor $41050, %rax
mov (%r14), %r12d
nop
nop
nop
nop
dec %r9

// Store
mov $0x5ab0af00000008b7, %rsi
xor $971, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
nop
sub %rdi, %rdi

// Store
mov $0x2bb9a4000000098b, %rax
nop
nop
nop
nop
inc %rsi
movw $0x5152, (%rax)
nop
nop
nop
nop
nop
add %r12, %r12

// Faulty Load
lea addresses_D+0x12b8b, %rdi
nop
cmp $29625, %r12
movaps (%rdi), %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 4}}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'45': 21, '44': 9, '48': 487, '49': 102, '38': 12408, '00': 8802}
38 00 38 00 38 38 38 00 38 00 00 38 38 38 38 00 38 00 00 38 38 38 38 38 38 38 38 00 00 00 38 00 38 00 00 00 38 38 48 38 38 38 38 00 00 38 00 00 38 38 38 38 38 38 38 00 38 38 38 38 00 38 00 00 38 38 48 00 38 38 00 00 00 38 38 00 00 38 38 38 38 38 38 38 38 00 38 38 38 38 38 00 38 38 38 38 00 38 38 38 38 38 38 00 38 48 38 38 38 38 38 00 38 38 38 00 00 00 38 38 38 38 00 38 00 38 00 38 38 00 38 48 38 38 00 00 00 38 38 38 38 38 00 00 38 38 00 38 38 00 00 38 38 38 00 00 38 00 38 38 38 38 48 38 00 00 38 00 38 00 00 38 00 00 00 38 48 00 38 38 00 38 00 38 38 00 38 00 38 00 38 38 00 38 00 00 00 00 00 00 00 38 00 00 38 38 38 38 38 38 38 00 38 00 38 38 00 38 00 38 38 38 00 38 38 00 38 00 00 00 38 38 38 38 38 38 48 38 00 38 00 00 38 38 38 00 00 38 38 38 48 00 00 38 00 00 38 00 00 38 00 00 00 38 38 38 00 38 38 38 38 00 38 00 38 38 38 38 38 38 00 38 00 38 00 00 38 38 00 38 38 38 38 38 38 38 00 00 00 38 00 00 38 38 38 38 00 38 00 00 00 00 38 38 38 38 38 00 48 38 00 00 38 38 38 38 00 00 00 00 38 38 38 38 38 00 38 00 38 00 38 38 00 00 00 38 38 00 00 00 38 00 00 38 00 00 00 38 38 00 38 49 38 00 00 38 00 38 00 00 38 38 38 00 38 48 00 38 38 38 38 00 38 00 00 38 00 38 00 00 00 00 38 38 00 00 00 00 00 38 38 38 38 00 00 38 00 00 38 00 38 38 00 38 38 38 38 38 38 38 00 00 00 00 00 38 38 38 38 38 00 00 38 38 38 38 38 00 38 38 48 38 00 38 38 38 00 38 00 38 00 00 38 00 00 38 38 38 00 38 00 00 00 38 00 00 00 00 00 00 38 38 38 00 38 38 00 00 38 38 00 38 38 38 38 48 38 38 38 00 00 00 00 00 38 00 00 00 38 38 38 38 38 48 38 00 38 38 00 00 38 38 38 38 00 38 38 38 00 38 38 38 00 38 00 38 00 38 00 00 00 00 00 38 00 00 00 00 38 00 38 38 00 38 38 38 00 00 38 38 38 38 48 38 38 38 38 00 00 38 38 38 00 38 48 38 00 38 38 38 38 00 00 00 00 38 38 38 00 38 38 00 38 00 38 00 00 38 38 00 38 38 00 38 00 38 38 00 38 00 38 00 38 38 00 38 49 38 38 00 00 38 38 00 38 00 38 00 38 00 38 38 38 38 38 00 38 38 00 38 38 00 38 38 38 00 38 00 00 00 38 00 00 00 38 00 00 38 38 38 38 38 38 38 38 38 38 00 38 00 38 38 38 38 48 00 00 38 38 38 38 38 00 00 00 38 38 48 00 38 38 38 38 00 00 00 00 00 38 38 38 38 38 38 00 38 38 38 00 00 00 00 38 38 38 38 38 38 38 38 00 00 00 00 00 38 38 38 00 38 48 38 00 38 38 38 38 00 00 38 38 38 38 38 00 00 38 38 38 38 38 38 00 00 00 00 38 00 38 48 38 38 38 38 00 38 38 00 00 38 00 38 00 38 00 38 38 38 38 00 38 38 00 38 38 00 38 38 38 38 38 38 38 38 00 38 38 38 00 38 49 00 00 38 00 38 38 38 38 00 38 00 00 38 38 38 38 48 38 38 38 38 38 00 38 38 00 38 38 38 38 38 38 00 00 00 38 38 00 00 00 38 38 00 38 38 00 38 00 38 00 38 00 38 38 38 00 38 48 38 38 38 00 00 00 00 38 38 38 00 38 00 38 00 00 00 38 00 38 38 38 38 38 38 38 38 48 00 38 38 38 38 38 00 00 38 38 00 38 00 38 38 38 00 38 38 38 38 00 00 00 38 38 00 38 38 00 38 00 00 38 38 00 00 00 38 38 00 00 38 00 38 00 38 38 38 38 38 38 00 00 38 00 00 38 38 38 38 00 38 38 00 00 38 00 00 38 38 38 38 38 00 00 00 38 00 38 00 00 38 38 00 38 38 38 38 00 38 38 38 38 00 38 38 00 38 38 48 38 38 00 38 38 00 38 38 00 00 38 00 38 00 48 00 00 38 38 38 38 38
*/
