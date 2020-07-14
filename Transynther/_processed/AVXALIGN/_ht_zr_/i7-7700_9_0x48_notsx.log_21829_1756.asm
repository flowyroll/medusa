.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r8
lea addresses_A_ht+0x1620b, %r8
nop
nop
nop
nop
nop
cmp $32651, %r12
vmovups (%r8), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r13
nop
nop
xor $37643, %r12
pop %r8
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rax
push %rdx

// Store
lea addresses_WT+0x1cf0b, %r14
nop
nop
nop
nop
inc %r8
movw $0x5152, (%r14)
cmp $60985, %r10

// Store
lea addresses_UC+0x960b, %r13
xor $24152, %rax
movb $0x51, (%r13)
nop
sub %rax, %rax

// Load
lea addresses_WC+0x60cb, %r8
nop
nop
sub $54199, %rax
mov (%r8), %r11
nop
nop
nop
nop
cmp $42454, %r11

// Load
mov $0xe0b, %rdx
xor $39607, %r8
mov (%rdx), %eax
nop
nop
nop
nop
and %r14, %r14

// Load
lea addresses_normal+0x154fe, %rax
clflush (%rax)
nop
nop
nop
nop
cmp %r10, %r10
mov (%rax), %r8w
nop
nop
nop
add %r10, %r10

// Store
lea addresses_UC+0xad0b, %rdx
clflush (%rdx)
nop
nop
nop
nop
xor %r13, %r13
movw $0x5152, (%rdx)
nop
nop
nop
nop
nop
cmp $59003, %rdx

// Store
mov $0x309c3f00000008eb, %r8
nop
nop
nop
dec %r11
movl $0x51525354, (%r8)
nop
and $41059, %r11

// Load
lea addresses_D+0xe4cb, %r10
nop
nop
nop
nop
nop
inc %r14
mov (%r10), %eax
nop
nop
nop
nop
nop
dec %r11

// Faulty Load
lea addresses_UC+0x960b, %r10
nop
nop
add $60144, %r11
vmovntdqa (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r8
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdx
pop %rax
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 6}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 9}}
{'45': 18521, '00': 3308}
00 45 45 00 45 45 00 00 00 00 45 00 45 45 00 45 45 00 45 00 45 00 45 00 45 00 45 45 45 00 00 00 45 00 00 45 00 45 45 00 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 00 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 00 00 45 00 45 45 45 45 45 00 45 00 45 45 00 45 00 00 45 45 00 45 45 45 45 45 45 00 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 00 45 45 45 45 00 00 45 45 00 45 45 45 45 45 00 45 45 45 00 00 45 45 00 45 45 45 00 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 00 45 00 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 00 45 45 00 45 00 45 45 45 45 45 00 45 45 00 00 45 45 45 00 45 45 45 00 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 00 00 45 45 45 45 45 00 00 45 45 00 00 45 45 45 45 45 00 45 45 00 45 00 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 45 00 00 45 45 45 45 45 45 00 45 45 00 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 00 00 45 45 45 45 00 45 45 45 00 45 45 00 45 00 00 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45
*/
