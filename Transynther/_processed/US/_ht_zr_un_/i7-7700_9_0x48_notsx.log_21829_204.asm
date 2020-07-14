.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x157ad, %rsi
lea addresses_UC_ht+0x1e883, %rdi
nop
nop
nop
nop
nop
inc %r12
mov $101, %rcx
rep movsl
nop
nop
nop
nop
inc %rax
lea addresses_normal_ht+0x473b, %r12
nop
nop
nop
nop
cmp $58910, %rbp
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r12)
and $24724, %rdi
lea addresses_WT_ht+0x12733, %rdi
clflush (%rdi)
nop
nop
cmp %r10, %r10
mov (%rdi), %r12
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1ca0b, %rsi
lea addresses_D_ht+0x1b09b, %rdi
nop
nop
lfence
mov $89, %rcx
rep movsq
nop
nop
nop
add $5989, %rsi
lea addresses_normal_ht+0xcf7b, %rbp
nop
nop
nop
nop
nop
and $2994, %rdi
movb (%rbp), %r10b
sub $3706, %rsi
lea addresses_A_ht+0x19db, %rax
nop
nop
nop
nop
nop
mfence
movups (%rax), %xmm7
vpextrq $1, %xmm7, %r12
nop
xor $20009, %r10
lea addresses_normal_ht+0x12a2b, %rbp
nop
nop
nop
xor $29613, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rbp)
nop
nop
nop
nop
cmp $59635, %rsi
lea addresses_A_ht+0x1c07b, %rsi
nop
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm6
movups %xmm6, (%rsi)
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0xefab, %r12
nop
nop
nop
nop
nop
add $42489, %rcx
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
nop
xor $33550, %rdi
lea addresses_WC_ht+0x5bb, %r10
nop
sub %rbp, %rbp
mov (%r10), %cx
nop
nop
and %r10, %r10
lea addresses_D_ht+0x1b13b, %rsi
nop
add %rcx, %rcx
movb $0x61, (%rsi)
nop
nop
nop
sub $60244, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Store
mov $0xb77, %r9
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
cmp $31111, %r13

// Load
lea addresses_WT+0x1394c, %rbp
nop
nop
nop
nop
nop
and $1032, %rdi
movb (%rbp), %r15b
nop
nop
nop
nop
add $4062, %r9

// Load
lea addresses_US+0x693b, %rbp
nop
dec %r9
mov (%rbp), %r13w
nop
nop
nop
sub $25074, %r15

// Faulty Load
lea addresses_US+0x693b, %rbp
nop
dec %rax
vmovups (%rbp), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
lea oracles, %rdi
and $0xff, %r13
shlq $12, %r13
mov (%rdi,%r13,1), %r13
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'f9': 1, '50': 1, '49': 7825, '47': 2387, '44': 10104, '00': 1511}
00 47 49 44 44 49 44 00 47 49 49 44 44 44 44 49 49 49 49 44 49 49 49 44 49 44 44 44 49 49 44 00 44 49 49 44 44 47 44 47 49 49 49 44 44 47 49 00 49 44 49 49 49 49 44 49 47 47 49 49 44 44 44 49 44 49 44 47 44 44 49 44 49 44 49 49 44 00 49 44 49 44 44 00 49 44 44 47 00 49 49 49 00 49 49 47 49 44 44 49 49 49 44 49 49 44 44 47 49 49 00 44 44 49 49 44 49 44 44 44 44 44 44 44 49 47 47 49 44 49 49 44 49 44 44 44 49 49 44 00 49 49 44 47 49 49 47 47 44 49 44 44 49 44 49 49 49 44 44 49 47 49 44 44 49 47 49 47 00 44 44 44 44 44 49 44 00 49 44 47 44 44 49 44 44 49 44 49 44 49 44 44 49 44 47 47 44 00 44 44 44 49 44 49 44 49 49 49 44 44 49 44 49 49 47 49 44 44 49 49 47 49 49 44 49 44 49 00 47 49 49 00 44 49 44 44 47 00 49 49 44 49 44 44 44 44 49 44 44 44 44 44 49 44 44 49 00 49 00 47 47 44 49 44 49 47 44 44 00 49 44 49 49 49 44 49 44 47 49 47 49 49 44 47 49 44 44 44 49 44 44 44 49 49 49 44 44 49 44 44 44 44 47 44 49 49 44 44 49 44 49 49 44 47 49 44 49 44 49 44 47 49 00 49 49 47 00 00 49 00 44 49 44 44 49 44 49 49 49 44 49 49 49 44 44 44 47 44 00 49 44 49 49 47 49 00 49 49 47 00 44 44 47 47 49 49 44 47 49 49 44 49 44 49 44 44 49 44 49 49 49 49 00 00 44 44 44 49 44 44 49 44 44 44 49 44 44 00 00 44 49 44 47 44 49 49 44 49 44 49 00 49 44 00 49 49 44 49 44 47 49 44 49 47 49 49 00 49 44 49 49 44 49 00 49 44 00 49 49 49 00 44 47 44 49 49 00 47 49 47 44 44 44 49 47 47 44 44 47 44 44 44 44 47 49 44 44 44 44 00 49 44 44 49 49 47 44 44 44 49 44 44 44 49 47 00 49 49 44 49 44 49 44 44 49 44 49 00 49 49 44 44 49 44 44 49 49 47 44 44 44 44 44 44 44 44 49 47 44 44 44 47 44 44 44 00 49 44 49 44 49 44 44 49 49 49 49 44 44 44 47 47 44 49 49 47 49 44 00 49 49 44 47 49 44 44 44 44 44 49 49 47 49 44 44 44 44 44 49 44 44 44 44 47 44 49 49 44 44 44 44 49 00 49 49 44 49 49 44 47 49 47 49 49 44 47 49 44 44 44 44 44 49 49 44 49 47 49 44 49 44 44 49 49 49 47 47 00 44 49 44 00 49 49 47 49 44 44 44 49 44 49 44 49 44 44 44 49 44 49 44 00 49 49 49 44 44 00 47 00 00 49 49 49 44 49 44 44 44 44 49 00 47 49 47 44 44 49 47 47 47 47 44 44 47 49 49 44 44 49 47 49 49 44 47 44 00 49 47 00 49 44 49 44 49 44 47 49 44 49 44 44 49 49 44 44 44 44 49 44 44 44 44 49 44 47 49 44 44 47 49 44 44 49 44 44 44 00 44 44 44 49 49 00 49 49 49 44 49 49 44 49 49 44 49 44 49 49 47 44 47 49 00 47 44 47 44 44 00 49 47 00 44 44 44 44 49 49 44 44 44 44 44 44 44 49 44 49 44 47 49 49 49 44 44 49 44 49 44 44 44 44 00 44 44 49 44 44 49 47 47 49 44 44 49 49 44 44 49 44 44 44 44 44 44 44 47 49 44 47 49 44 49 49 00 44 49 47 49 49 44 44 44 00 49 49 00 47 44 49 47 44 44 49 49 44 44 49 00 49 49 47 49 44 49 49 49 00 44 49 44 49 49 44 49 44 00 49 49 44 44 44 44 44 44 44 44 49 44 00 49 47 44 49 49 44 44 44 49 49 44 47 49 44 49 44 44 47 44 44 44 49 49 44 44 47 49 49 49 47 49 47 49 44 49 49 47 49 44 49 47 47 49 47 44 49 44 44 44 44 00 49 49 49 47 00 49 49 00 47 49 00 44 47 00 49 44 49 49 44 49 44 00 44 44 49 44 49 49 44 49 44 44 49 49 47 49 44 00 49 44 44 47 49 47 49 47 44 44 49 44 47 47 44 49 49 49 00 49 44 44 44 47 44 49 49 49 49 44 44
*/
