.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xbbc4, %rsi
lea addresses_WC_ht+0x1277a, %rdi
nop
nop
nop
nop
and $31460, %r14
mov $109, %rcx
rep movsw
nop
nop
nop
sub %r11, %r11
lea addresses_A_ht+0x1ac4, %rsi
lea addresses_normal_ht+0xb644, %rdi
nop
nop
nop
nop
nop
sub $26787, %rbp
mov $64, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x3704, %rsi
lea addresses_WT_ht+0xd094, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $17110, %rbp
mov $24, %rcx
rep movsq
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_WC_ht+0xfa4a, %rsi
lea addresses_A_ht+0xe310, %rdi
nop
nop
nop
nop
and $53448, %r9
mov $18, %rcx
rep movsw
nop
nop
nop
nop
sub $6111, %r9
lea addresses_D_ht+0xd9c4, %r9
clflush (%r9)
nop
nop
inc %rbp
movups (%r9), %xmm1
vpextrq $1, %xmm1, %rsi
nop
nop
nop
nop
add %r14, %r14
lea addresses_A_ht+0x149c4, %rsi
cmp %r9, %r9
movb $0x61, (%rsi)
nop
nop
nop
nop
sub $56389, %rcx
lea addresses_WC_ht+0x1357b, %rdi
nop
nop
nop
nop
xor %rbp, %rbp
movups (%rdi), %xmm0
vpextrq $0, %xmm0, %rcx
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x2ec4, %rdi
sub %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
dec %rbp
lea addresses_normal_ht+0x19204, %rsi
lea addresses_UC_ht+0x128d5, %rdi
nop
nop
nop
nop
nop
sub $35499, %rdx
mov $96, %rcx
rep movsq
nop
xor $19649, %r14
lea addresses_D_ht+0x18db4, %rsi
lea addresses_normal_ht+0x10582, %rdi
nop
nop
nop
nop
nop
lfence
mov $49, %rcx
rep movsb
and $4838, %rbp
lea addresses_WT_ht+0x13334, %rsi
lea addresses_normal_ht+0x8e84, %rdi
clflush (%rdi)
nop
nop
cmp %r11, %r11
mov $83, %rcx
rep movsq
nop
nop
nop
nop
cmp $37454, %rbp
lea addresses_D_ht+0xd726, %r11
nop
nop
nop
nop
nop
sub %r14, %r14
vmovups (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %rcx
nop
inc %rbp
lea addresses_WT_ht+0x55b4, %rsi
nop
nop
sub $23919, %r14
mov $0x6162636465666768, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%rsi)
nop
xor %r14, %r14
lea addresses_UC_ht+0x14dc4, %r9
nop
sub %r14, %r14
movw $0x6162, (%r9)
nop
nop
nop
nop
add $61439, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_D+0x11c4, %rsi
lea addresses_D+0x1c844, %rdi
add $6606, %r14
mov $35, %rcx
rep movsw
cmp %rcx, %rcx

// Store
lea addresses_RW+0x23c4, %rsi
cmp %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovups %ymm5, (%rsi)
nop
nop
nop
nop
nop
xor $56800, %r11

// Load
lea addresses_normal+0x10dc4, %r14
nop
nop
xor $10081, %rcx
vmovaps (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $1, %xmm6, %rsi
nop
xor $47999, %rsi

// Load
lea addresses_D+0x11c4, %rsi
nop
nop
nop
nop
add %rcx, %rcx
vmovups (%rsi), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r14
dec %rdi

// Store
lea addresses_D+0x14fc4, %r11
and $102, %r14
mov $0x5152535455565758, %r12
movq %r12, %xmm0
movups %xmm0, (%r11)
nop
inc %rdi

// Load
lea addresses_A+0xd8ac, %r12
nop
nop
nop
sub $62170, %rsi
movb (%r12), %r14b
nop
nop
nop
nop
nop
dec %rcx

// Load
lea addresses_D+0x11c4, %r12
nop
nop
nop
nop
nop
sub $17772, %r10
movb (%r12), %cl
nop
nop
nop
nop
and $56538, %r12

// Store
mov $0x580700000001c4, %rdi
nop
nop
nop
nop
cmp %r11, %r11
movl $0x51525354, (%rdi)
nop
nop
nop
nop
xor $55020, %rsi

// Faulty Load
lea addresses_D+0x11c4, %r14
add %r10, %r10
mov (%r14), %esi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_D'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_normal', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A', 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_D', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_D', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'36': 2}
36 36
*/
