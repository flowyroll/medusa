.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r14
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x154ef, %rsi
lea addresses_normal_ht+0x12747, %rdi
nop
nop
nop
nop
nop
add $33372, %rbx
mov $91, %rcx
rep movsw
nop
nop
xor $55824, %rsi
lea addresses_normal_ht+0x64e, %r12
nop
nop
nop
and %rsi, %rsi
movl $0x61626364, (%r12)
nop
nop
nop
nop
nop
cmp $41033, %rdi
lea addresses_WT_ht+0x17e0f, %rsi
nop
nop
add $30940, %rdi
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x156bf, %rsi
nop
nop
nop
nop
nop
sub $27432, %rbx
mov (%rsi), %r12
nop
and $30729, %rsi
lea addresses_WT_ht+0x18002, %rcx
nop
nop
nop
nop
nop
cmp %r13, %r13
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add $20758, %r14
lea addresses_WT_ht+0x4e0f, %rsi
lea addresses_UC_ht+0x1738f, %rdi
nop
nop
add $53132, %r10
mov $118, %rcx
rep movsw
nop
nop
nop
sub %r14, %r14
lea addresses_UC_ht+0x1670f, %rsi
lea addresses_D_ht+0x3f4f, %rdi
nop
nop
nop
and %r10, %r10
mov $84, %rcx
rep movsw
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1e587, %rsi
lea addresses_UC_ht+0xe50f, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $16, %rcx
rep movsb
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1410f, %rsi
lea addresses_UC_ht+0x1d50f, %rdi
sub $12033, %r10
mov $22, %rcx
rep movsb
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x1cac3, %r13
nop
nop
nop
nop
xor $35154, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
movups %xmm0, (%r13)
nop
add $21428, %r13
lea addresses_WC_ht+0x4f0f, %rcx
nop
sub $2665, %rdi
mov (%rcx), %r13d
nop
nop
nop
add %r14, %r14
lea addresses_UC_ht+0xc5ed, %r12
nop
nop
nop
nop
nop
add $37954, %rcx
vmovups (%r12), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rdi
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x188ff, %r13
and $22659, %r10
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
cmp $34997, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %rax
push %rbp
push %rcx
push %rdx
push %rsi

// Store
mov $0x50f, %rbp
nop
nop
xor $60162, %rax
movl $0x51525354, (%rbp)
nop
add $54010, %r13

// Faulty Load
mov $0x5d0e88000000090f, %r13
nop
nop
nop
nop
xor %rdx, %rdx
vmovups (%r13), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 2}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 4}, 'OP': 'STOR'}
{'63': 2, '49': 8891, '47': 28, '08': 1, '8a': 3, '44': 177, '00': 12727}
00 00 49 00 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 00 49 00 00 00 00 00 49 00 49 00 49 00 49 00 00 49 00 00 49 00 00 49 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 49 00 00 00 44 44 00 00 00 00 49 00 49 00 49 00 00 00 49 00 00 49 00 00 49 00 49 00 00 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 00 49 00 49 00 00 49 00 49 00 49 00 00 49 00 00 00 00 00 49 00 49 00 00 49 00 00 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 00 49 00 00 00 49 00 49 00 00 00 49 00 49 00 00 00 00 49 00 00 00 49 00 49 00 49 00 44 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 00 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 00 00 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 00 00 49 00 49 00 49 00 49 00 00 00 00 00 49 00 49 00 00 49 00 00 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 00 00 49 00 49 00 00 00 49 00 49 00 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 44 00 00 00 00 00 49 00 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 00 00 49 00 00 49 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 00 49 00 00 49 00 49 00 00 49 00 00 00 00 49 00 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 00 49 00 00 49 00 49 00 49 00 00 49 00 00 49 00 00 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 00 49 00 49 00 00 00 49 00 49 00 00 00 49 00 49 00 49 00 49 00 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 44 44 00 00 44 44 00 44 00 00 00 49 00 00 49 00 49 00 49
*/
