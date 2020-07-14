.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1101, %rcx
nop
nop
nop
lfence
mov (%rcx), %r8
nop
add %r10, %r10
lea addresses_A_ht+0x1233b, %r12
nop
nop
nop
nop
sub %r14, %r14
movw $0x6162, (%r12)
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x3b3b, %rsi
nop
add %r10, %r10
vmovups (%rsi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
nop
nop
nop
xor $35879, %r8
lea addresses_normal_ht+0x1c33b, %rcx
nop
xor %rax, %rax
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r8
nop
nop
nop
nop
nop
xor $56017, %rcx
lea addresses_UC_ht+0x2f3b, %rax
nop
nop
nop
nop
dec %r14
mov (%rax), %r12d
nop
xor %r10, %r10
lea addresses_normal_ht+0x213b, %r12
nop
inc %rax
mov (%r12), %r14w
nop
nop
lfence
lea addresses_WT_ht+0x1053b, %rsi
lea addresses_WT_ht+0x693b, %rdi
clflush (%rsi)
xor $28324, %r12
mov $56, %rcx
rep movsw
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x12b7b, %rsi
lea addresses_D_ht+0x1dbeb, %rdi
nop
nop
nop
cmp $42814, %r10
mov $39, %rcx
rep movsw
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0x973b, %rsi
lea addresses_A_ht+0x1af3b, %rdi
nop
nop
and $41794, %rax
mov $43, %rcx
rep movsl
nop
nop
nop
nop
and %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r15
push %r8
push %r9
push %rdi
push %rdx

// Store
lea addresses_D+0x169fb, %rdx
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %r13
movq %r13, (%rdx)
nop
nop
inc %r10

// Faulty Load
lea addresses_A+0xdb3b, %r9
nop
nop
nop
nop
nop
cmp $47992, %r15
vmovaps (%r9), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': True, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'46': 18834, '00': 2803, '49': 192}
00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 00 46 49 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 49 49 00 46 00 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 49 00 46 46 00 46 46 00 46 46 46 46 00 46 46 46 46 00 46 46 46 46 46 46 46 00 46 00 46 46 00 00 00 00 46 46 46 00 46 46 46 46 46 00 46 46 46 00 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 00 46 00 00 49 00 00 46 46 46 00 46 46 46 00 46 46 00 46 46 46 46 00 46 46 46 46 00 00 46 46 46 46 46 46 46 00 46 49 00 46 46 46 46 46 00 00 00 00 00 46 46 46 00 00 46 46 46 00 00 46 46 46 46 46 46 46 46 46 00 00 00 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 49 00 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 00 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 46 46 46 49 00 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
