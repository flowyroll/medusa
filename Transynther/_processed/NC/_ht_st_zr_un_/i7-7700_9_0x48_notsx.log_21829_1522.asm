.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x16aa7, %rbp
nop
nop
nop
nop
nop
cmp $23823, %r8
vmovups (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1e51f, %r8
nop
inc %rdi
movl $0x61626364, (%r8)
cmp %r10, %r10
lea addresses_UC_ht+0x128a5, %rsi
lea addresses_UC_ht+0x11b27, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
dec %rdx
mov $2, %rcx
rep movsb
nop
nop
nop
cmp $20895, %rdi
lea addresses_A_ht+0x6307, %rbp
nop
nop
add %rsi, %rsi
mov (%rbp), %r10d
add %rsi, %rsi
lea addresses_WC_ht+0x17f27, %r10
nop
nop
nop
nop
dec %rdi
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
and %r10, %r10
lea addresses_A_ht+0x153e6, %rcx
nop
nop
add $26488, %rsi
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp $52836, %rcx
lea addresses_WC_ht+0x17d7, %rsi
lea addresses_A_ht+0x8727, %rdi
nop
cmp %r8, %r8
mov $0, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0xf3e7, %rsi
lea addresses_normal_ht+0x1724b, %rdi
xor %r8, %r8
mov $68, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x18927, %rdx
nop
nop
add %r8, %r8
mov (%rdx), %esi
nop
nop
nop
nop
cmp $22673, %rsi
lea addresses_WC_ht+0x566b, %rsi
lea addresses_D_ht+0x2fc7, %rdi
nop
nop
nop
nop
nop
sub $28627, %r14
mov $4, %rcx
rep movsq
nop
nop
nop
nop
sub $51731, %rdx
lea addresses_normal_ht+0x144e7, %rdx
add $49850, %r8
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x15727, %rcx
dec %r10
movl $0x61626364, (%rcx)
and $56181, %r14
lea addresses_D_ht+0x113b7, %r10
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rdi
movq %rdi, (%r10)
nop
nop
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_RW+0x1127, %r9
cmp $26974, %rbx
movb $0x51, (%r9)
nop
nop
nop
and $17172, %rdx

// Faulty Load
mov $0x13d8810000000f27, %rsi
nop
nop
cmp $21712, %rdx
vmovups (%rsi), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 9}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 5}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 4}, 'OP': 'STOR'}
{'48': 19293, 'd5': 2, '5a': 19, '51': 1, '5d': 2, '79': 1, '93': 2459, '89': 1, '35': 1, 'af': 1, '69': 1, '59': 26, '25': 3, '9d': 1, '15': 1, '61': 1, '63': 1, '21': 2, '8b': 1, '19': 1, 'e3': 1, '95': 1, '00': 1, 'a5': 1, 'cd': 1, 'bb': 1, 'e9': 1, '97': 1, 'bd': 1, 'f9': 1, 'c9': 1}
48 48 48 48 93 48 48 48 48 48 48 48 48 48 93 93 93 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 93 93 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 93 48 48 48 48 48 48 48 48 93 93 48 48 48 48 48 48 93 48 93 48 48 93 93 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 93 48 48 48 93 93 48 93 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 c9 48 93 48 48 48 48 48 48 93 48 48 48 48 48 93 93 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 93 48 48 48 48 48 48 48 48 48 93 93 48 48 48 48 5a 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 93 48 48 48 48 48 93 93 48 48 48 48 48 48 93 48 48 48 48 93 93 48 48 93 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 93 48 48 48 48 48 93 48 48 48 48 48 48 48 93 48 48 48 48 48 48 93 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 93 48 48 93 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 93 48 48 48 93 95 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 93 48 93 93 48 48 48 48 48 48 48 48 48 93 48 93 48 48 93 48 48 48 93 93 48 48 48 93 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 93 48 48 48 48 48 48 93 48 93 48 48 48 48 48 48 48 48 48 48 48 93 48 48 93 48 93 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 93 48 48 93 48 93 48 48 48 61 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 93 48 93 93 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 93 48 93 48 48 48 48 48 48 93 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 93 48 48 93 93 48 48 48 48 48 48 93 93 48 48 93 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 93 48 48 48 48 48 48 48 48 93 48 48 93 93 48 48 48 93 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 93 48 93 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 93 48 48 93 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 93 48 93 48 59 48 48 48 48 48 48 93 48 48 48 48 48 48 48 48 48 48 93 48 48 48 48 48 48 93 48 48 48 48 48
*/
