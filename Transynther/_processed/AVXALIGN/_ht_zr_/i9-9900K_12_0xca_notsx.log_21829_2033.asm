.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11082, %r14
nop
nop
nop
nop
nop
xor %r10, %r10
movups (%r14), %xmm5
vpextrq $0, %xmm5, %rdi
nop
nop
nop
xor $63718, %r13
lea addresses_normal_ht+0x2982, %rsi
lea addresses_normal_ht+0x15582, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov $106, %rcx
rep movsl
nop
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x13e42, %r14
nop
nop
cmp %rcx, %rcx
mov (%r14), %rdi
nop
nop
dec %r13
lea addresses_normal_ht+0x19ec2, %rsi
lea addresses_WC_ht+0x39f0, %rdi
nop
nop
nop
nop
nop
add $49182, %r15
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x43aa, %rsi
lea addresses_D_ht+0x10182, %rdi
nop
nop
nop
and %r10, %r10
mov $114, %rcx
rep movsw
xor %r13, %r13
lea addresses_WT_ht+0x1341a, %r14
inc %r15
mov (%r14), %ecx
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x1d4c2, %r15
sub $47000, %r13
movups (%r15), %xmm3
vpextrq $0, %xmm3, %rsi
nop
nop
nop
add $38608, %r10
lea addresses_normal_ht+0x1e032, %rsi
nop
nop
sub %rdi, %rdi
mov (%rsi), %ecx
nop
and %rdi, %rdi
lea addresses_WC_ht+0x16e22, %r14
nop
nop
nop
nop
cmp $22915, %rdi
movb $0x61, (%r14)
sub %r13, %r13
lea addresses_D_ht+0x87e0, %r15
nop
nop
nop
nop
nop
xor $8197, %rsi
mov (%r15), %r8w
nop
add %r15, %r15
lea addresses_WT_ht+0xd0fa, %r15
nop
xor %rsi, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%r15)
inc %r15
lea addresses_A_ht+0x1b4e2, %r10
add $9397, %r14
movl $0x61626364, (%r10)
nop
nop
nop
nop
dec %r10
lea addresses_UC_ht+0xd960, %rsi
lea addresses_UC_ht+0x6f82, %rdi
nop
and %r15, %r15
mov $73, %rcx
rep movsq
nop
nop
inc %rdi
lea addresses_WT_ht+0x4182, %r13
nop
nop
nop
sub %rsi, %rsi
vmovups (%r13), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
sub $30192, %r10
lea addresses_A_ht+0x19e42, %rsi
nop
xor %rcx, %rcx
movups (%rsi), %xmm6
vpextrq $0, %xmm6, %r14
nop
nop
nop
nop
xor $13076, %r10
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %rax
push %rbp
push %rsi

// Faulty Load
mov $0x4ad9220000000182, %rax
and %r11, %r11
movntdqa (%rax), %xmm1
vpextrq $1, %xmm1, %rsi
lea oracles, %rbp
and $0xff, %rsi
shlq $12, %rsi
mov (%rbp,%rsi,1), %rsi
pop %rsi
pop %rbp
pop %rax
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'46': 3683, '49': 2672, '00': 11115, '45': 3690, '44': 118, '47': 551}
00 00 00 49 45 45 46 49 46 00 00 00 00 00 00 00 00 00 00 00 00 49 45 46 49 46 49 46 49 46 49 46 00 00 00 00 00 00 00 00 00 00 45 46 49 46 00 46 00 00 00 00 47 00 00 00 00 00 00 45 45 46 49 46 00 47 00 00 00 00 45 45 45 46 49 46 00 00 00 00 00 49 45 45 45 46 49 00 00 00 46 46 00 46 49 46 49 46 46 00 00 00 00 00 00 00 00 00 46 45 46 49 46 00 00 46 00 00 45 45 45 46 46 46 46 46 46 00 00 00 00 00 45 46 46 49 46 46 00 00 46 00 00 00 00 00 00 00 49 45 46 49 46 49 00 00 00 00 00 00 00 46 00 45 45 45 46 49 46 00 00 00 00 00 00 00 46 00 45 46 49 46 46 49 46 47 00 00 00 00 00 49 46 49 46 46 46 00 00 00 00 00 49 45 46 46 49 46 49 46 49 46 00 00 00 00 00 00 49 45 46 49 46 49 46 00 00 00 47 00 00 45 45 45 46 49 46 46 00 00 46 00 49 45 46 49 46 00 00 00 00 00 00 00 49 46 00 00 00 00 00 00 00 00 00 00 45 45 45 46 49 46 00 00 00 47 00 00 00 00 49 45 46 49 00 00 00 00 00 45 45 46 49 46 49 46 49 46 49 46 00 47 46 00 00 00 00 00 00 45 45 45 45 45 46 49 46 49 46 00 00 00 00 00 00 00 45 45 45 46 49 00 00 00 00 00 00 00 00 45 45 45 46 46 46 46 00 00 00 00 46 00 49 45 45 45 46 49 46 00 00 00 00 00 00 00 49 45 45 45 46 49 00 00 00 47 00 00 00 00 00 00 00 00 47 45 45 46 49 46 49 46 49 46 00 00 00 00 00 00 00 49 00 49 45 45 45 46 49 46 00 00 46 00 00 00 00 00 49 45 46 46 49 00 00 00 00 00 00 45 45 45 45 45 46 49 46 00 00 00 46 45 45 46 49 46 49 46 00 00 47 00 00 00 00 00 00 47 45 45 45 46 49 00 47 00 00 00 00 00 00 00 45 45 46 49 49 46 49 46 00 00 00 00 00 49 45 45 45 46 49 46 00 00 00 00 00 49 45 45 45 46 49 00 00 00 00 00 00 46 00 00 47 00 00 45 45 46 49 46 00 00 00 00 49 45 45 45 45 45 46 49 46 49 00 00 00 00 46 00 00 46 49 45 46 46 49 46 46 49 46 47 00 00 00 00 00 00 00 49 45 45 45 46 49 46 00 46 00 47 46 00 00 00 00 00 45 45 45 46 49 46 00 00 00 00 00 00 46 45 45 46 49 46 46 49 44 49 46 46 46 00 00 00 00 00 00 00 00 00 49 46 49 46 44 49 46 49 46 49 46 00 00 00 00 00 49 45 45 45 46 49 00 00 47 00 00 00 00 00 46 45 46 49 46 46 00 00 00 00 00 00 49 45 46 49 00 00 00 00 00 00 00 00 46 49 45 46 49 46 49 46 00 00 45 46 46 49 46 49 46 49 00 00 00 00 00 45 46 49 46 00 00 00 00 00 00 00 00 00 49 45 46 49 46 49 46 49 46 00 00 00 00 00 00 49 45 46 49 46 46 49 46 49 00 00 00 00 00 49 45 46 49 46 46 00 00 00 47 00 00 00 00 46 00 00 49 45 45 45 45 46 49 00 00 00 00 47 00 00 49 45 45 45 45 45 46 49 46 49 46 49 00 00 00 00 00 00 00 45 45 45 46 49 00 47 00 00 47 00 00 45 45 45 46 49 49 00 00 46 00 00 00 00 00 47 00 00 47 00 00 49 45 46 49 00 00 00 00 00 47 00 00 49 45 45 45 45 46 49 00 46 00 00 00 00 00 49 45 46 49 00 00 00 00 00 46 00 00 49 45 45 46 49 46 49 46 00 00 00 00 00 00 00 46 00 00 00 00 00 00 46 00 47 00 00 00 00 00 00 00 00 00 49 45 45 46 46 49 46 49 46 49 46 47 46 00 46 00 47 46 46 49 45 45 45 45 45 45 46 49 46 49 46 00 00 00 00 00 00 00 00 00 49 45 45 45 45 45 46 49 46 49 00 00 46 00 00 00 49 45 46 49 00 00 00 45 45 45 45 45 45 45 46 49 46 00 47 00 00 00 00 49 45 45 45 46 49 00 00 00 00 46 00 00 00 00 00 00 49 45 46 00 00 46 00 00 46 00 49 45 46 49 46 49 00 00 00 00 49
*/
