.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1b758, %r14
nop
nop
nop
nop
xor %rbp, %rbp
movw $0x6162, (%r14)
nop
nop
nop
nop
sub $29327, %rsi
lea addresses_normal_ht+0x15058, %rax
nop
nop
nop
nop
cmp $9673, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm4
movups %xmm4, (%rax)
nop
nop
nop
nop
nop
and $59690, %rbp
lea addresses_normal_ht+0xb268, %r8
nop
add %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, (%r8)
add %rsi, %rsi
lea addresses_normal_ht+0x5db8, %rbp
nop
nop
nop
nop
nop
add $33211, %rax
movups (%rbp), %xmm5
vpextrq $1, %xmm5, %r8
nop
nop
nop
nop
and $36368, %r14
lea addresses_A_ht+0xc7f7, %r8
nop
sub $7576, %rax
mov $0x6162636465666768, %r10
movq %r10, (%r8)
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x18778, %rsi
lea addresses_WC_ht+0x16158, %rdi
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $84, %rcx
rep movsq
xor $30544, %r8
lea addresses_WT_ht+0x7986, %rsi
lea addresses_UC_ht+0x1c2ea, %rdi
nop
nop
nop
cmp $47180, %r10
mov $107, %rcx
rep movsq
nop
nop
nop
nop
add %r10, %r10
lea addresses_WC_ht+0x4ac8, %rbp
nop
nop
nop
nop
nop
and %r15, %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0x66d8, %r14
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r14)
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rcx
push %rdi

// Faulty Load
mov $0x7e61880000000958, %r11
nop
xor %r15, %r15
movups (%r11), %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %r10
and $0xff, %rdi
shlq $12, %rdi
mov (%r10,%rdi,1), %rdi
pop %rdi
pop %rcx
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'05': 2, '32': 1, '49': 19597, '00': 3, '08': 1, '44': 2225}
49 49 49 49 49 44 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 44 49 44 49 49 49 49 49 49 49 44 44 49 49 49 44 44 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 44 44 49 49 49 49 49 44 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 44 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 49 49 49 44 44 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 05 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 44 44 49 49 49 49 49 44 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 44 49 49 49 49 49 49 49 44 49 49 49 44 49 49 49 44 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 44 44 49 49 49 49 49 49 44 49 44 49 49 49 49 49 49 49 49 44 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 49 44 44 44 49 49 49 49 49 49 49 49 49 49
*/
