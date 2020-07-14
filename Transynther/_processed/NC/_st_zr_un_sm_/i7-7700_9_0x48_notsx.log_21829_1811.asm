.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x13d1f, %r13
nop
cmp $12486, %rax
vmovups (%r13), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r9
nop
nop
nop
xor %r9, %r9
lea addresses_WC_ht+0x1155f, %rsi
lea addresses_A_ht+0x1a91f, %rdi
nop
inc %r9
mov $27, %rcx
rep movsb
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_D_ht+0x1701f, %rax
nop
and $35777, %r10
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x301f, %r13
nop
nop
nop
nop
xor %rcx, %rcx
movw $0x6162, (%r13)
nop
nop
nop
sub $54189, %r9
lea addresses_normal_ht+0x2881, %r10
sub %rdi, %rdi
movw $0x6162, (%r10)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x10d53, %rdi
nop
nop
nop
xor $59005, %rax
vmovups (%rdi), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %r9
nop
and $22901, %rdi
lea addresses_UC_ht+0x176bf, %rsi
lea addresses_UC_ht+0xb51f, %rdi
nop
nop
add $62435, %r8
mov $3, %rcx
rep movsl
nop
nop
nop
and $31624, %r10
lea addresses_WC_ht+0x357c, %rax
nop
nop
and $51656, %r9
mov (%rax), %ecx
nop
nop
nop
cmp $37440, %r9
lea addresses_WT_ht+0xc59f, %rsi
lea addresses_WC_ht+0xbccb, %rdi
nop
nop
nop
and %r9, %r9
mov $14, %rcx
rep movsb
nop
add $62718, %r8
lea addresses_D_ht+0x17bab, %r13
clflush (%r13)
nop
nop
nop
cmp $11018, %rax
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
nop
xor $49715, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rax
push %rbx
push %rdi
push %rsi

// Store
lea addresses_PSE+0x1191f, %rdi
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movaps %xmm5, (%rdi)
nop
nop
nop
nop
cmp $51358, %r8

// Store
mov $0x13351d0000000d1f, %r12
nop
xor %rbx, %rbx
movl $0x51525354, (%r12)
nop
nop
nop
nop
nop
sub $20482, %rax

// Faulty Load
mov $0x13351d0000000d1f, %r8
nop
nop
nop
dec %rbx
mov (%r8), %r12d
lea oracles, %rsi
and $0xff, %r12
shlq $12, %r12
mov (%rsi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_PSE', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 1}}
{'6d': 11821, '00': 120, '54': 9888}
6d 54 6d 6d 6d 54 6d 6d 54 54 6d 54 54 6d 54 54 6d 6d 54 6d 54 6d 54 54 6d 54 54 54 54 54 54 6d 54 6d 6d 54 54 54 54 54 54 6d 54 54 54 54 54 6d 54 6d 6d 6d 54 6d 54 6d 6d 6d 54 54 54 6d 6d 54 54 54 6d 6d 54 6d 54 54 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 54 6d 54 6d 54 6d 6d 6d 54 6d 54 6d 54 6d 54 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 54 6d 6d 6d 6d 54 6d 54 54 54 6d 6d 54 6d 54 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 54 54 54 6d 6d 54 54 6d 54 6d 54 6d 6d 54 6d 6d 6d 6d 54 6d 6d 6d 54 6d 6d 54 6d 6d 6d 54 54 6d 54 6d 6d 54 6d 54 6d 54 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 54 6d 6d 6d 54 6d 54 54 6d 6d 54 6d 54 6d 6d 6d 6d 54 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 6d 6d 6d 54 54 6d 54 6d 6d 6d 6d 54 6d 6d 54 6d 54 54 6d 6d 54 54 6d 6d 6d 6d 6d 6d 54 6d 6d 54 6d 54 6d 54 6d 6d 6d 54 54 6d 6d 6d 6d 6d 54 54 6d 54 54 6d 54 6d 54 54 6d 54 6d 54 54 6d 6d 6d 6d 54 6d 54 54 54 6d 54 54 54 54 54 54 54 54 6d 6d 6d 6d 54 54 6d 6d 6d 6d 54 54 54 6d 6d 54 6d 6d 54 6d 54 6d 6d 54 54 54 6d 6d 6d 6d 54 6d 54 54 6d 6d 6d 54 54 54 00 6d 6d 54 6d 6d 54 6d 54 54 6d 6d 6d 6d 54 6d 54 6d 54 54 6d 54 54 54 6d 54 54 54 54 54 54 6d 6d 54 6d 6d 6d 6d 54 6d 54 54 6d 54 54 54 54 6d 54 54 6d 54 6d 54 6d 6d 6d 54 6d 6d 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 54 54 54 6d 6d 6d 6d 54 6d 54 6d 6d 6d 6d 54 6d 6d 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 6d 54 54 6d 6d 54 54 54 6d 54 6d 6d 6d 54 6d 54 6d 6d 54 54 6d 6d 54 6d 54 54 54 6d 54 6d 6d 54 54 6d 6d 6d 54 54 6d 6d 54 54 54 6d 54 54 6d 6d 6d 54 6d 6d 6d 54 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 54 6d 54 54 6d 54 6d 54 6d 54 6d 6d 6d 6d 6d 54 6d 6d 6d 54 54 54 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 54 54 6d 6d 00 6d 54 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 54 54 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 6d 6d 6d 54 6d 6d 6d 54 6d 6d 54 6d 6d 6d 6d 54 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 54 6d 54 54 6d 54 6d 6d 00 54 54 6d 54 6d 6d 6d 54 6d 54 6d 54 54 6d 6d 54 00 6d 54 6d 54 6d 6d 54 54 6d 54 6d 6d 54 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 54 6d 6d 6d 54 6d 6d 6d 6d 6d 6d 6d 6d 6d 54 54 54 54 54 54 54 54 54 54 54 6d 6d 6d 54 6d 6d 6d 54 54 6d 54 6d 54 6d 54 6d 6d 6d 6d 6d 54 54 54 6d 6d 54 54 54 54 54 54 6d 6d 6d 54 6d 6d 6d 54 54 6d 54 54 54 54 54 6d 54 6d 54 6d 54 6d 54 6d 54 6d 54 6d 54 6d 6d 6d 54 6d 54 6d 54 54 6d 54 6d 54 54 6d 6d 54 54 54 6d 6d 54 54 6d 6d 54 54 6d 6d 54 6d 54 6d 54 6d 6d 6d 54 6d 54 54 54 00 54 6d 54 00 54 54 54 6d 6d 54 6d 6d 6d 6d 54 54 54 54 54 54 6d 54 6d 54 6d 54 54 6d 54 6d 6d 54 6d 6d 6d 6d 6d 54 54 54 6d 54 6d 6d 54 6d 54 6d 54 6d 6d 54 54 54 6d 6d 54 6d 54 54 54 6d 54 6d 6d 6d 6d 6d 54 54 6d 54 6d 6d 6d 6d 6d 54 6d 6d 54 6d 6d 6d 6d 54 54 54 54 6d 54 6d 54 6d 6d 54 54 54 6d 6d 6d 6d 6d 6d 6d 6d 54 6d 54 54 54 6d 54 6d 6d 54 6d 6d 6d 54 6d 54 54 54 54 6d 54
*/
