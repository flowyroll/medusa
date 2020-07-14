.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x39f9, %rsi
lea addresses_D_ht+0xce19, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $49988, %r11
mov $5, %rcx
rep movsl
nop
nop
add $61277, %rbp
lea addresses_normal_ht+0x53d9, %rsi
lea addresses_WC_ht+0x27f9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add $44315, %r8
mov $124, %rcx
rep movsw
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0xf1f9, %rsi
lea addresses_A_ht+0xa5f9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r12, %r12
mov $82, %rcx
rep movsw
nop
nop
nop
mfence
lea addresses_WC_ht+0x14157, %rsi
lea addresses_D_ht+0xed99, %rdi
nop
and $59271, %r10
mov $78, %rcx
rep movsb
nop
nop
nop
and %r11, %r11
lea addresses_A_ht+0x81f9, %rsi
lea addresses_WT_ht+0x187f9, %rdi
nop
nop
nop
nop
nop
add $10781, %rbp
mov $54, %rcx
rep movsw
nop
nop
nop
nop
dec %rcx
lea addresses_UC_ht+0xdb3f, %rcx
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, (%rcx)
nop
and %rdi, %rdi
lea addresses_WT_ht+0x1e1f9, %rcx
nop
nop
and %r8, %r8
movl $0x61626364, (%rcx)
xor $62555, %r8
lea addresses_D_ht+0x111f9, %r11
nop
nop
nop
nop
add $37505, %r8
movl $0x61626364, (%r11)
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x879, %rsi
lea addresses_UC_ht+0x61f9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
inc %r8
mov $127, %rcx
rep movsw
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x16c54, %r10
nop
nop
nop
nop
nop
and $22413, %rbp
movb (%r10), %r8b
nop
nop
nop
nop
inc %r8
lea addresses_A_ht+0x1e641, %r11
nop
nop
nop
xor $26094, %rdi
movl $0x61626364, (%r11)
nop
nop
nop
cmp $49761, %r12
lea addresses_WC_ht+0x6539, %r8
nop
nop
nop
nop
and $14104, %r10
mov $0x6162636465666768, %rbp
movq %rbp, %xmm0
and $0xffffffffffffffc0, %r8
movaps %xmm0, (%r8)
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r8
push %r9
push %rbp
push %rsi

// Store
mov $0x43437c00000001b9, %r8
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
nop
and $20164, %r9

// Faulty Load
mov $0x4a8d6300000001f9, %r10
nop
nop
nop
nop
dec %r13
vmovntdqa (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r9
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rsi
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 6}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'congruent': 2, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'44': 7, '45': 2400, '00': 902, '49': 7, '48': 47}
45 48 00 45 45 45 45 45 00 45 45 00 45 00 45 00 45 45 00 45 45 00 00 00 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 45 45 00 00 00 00 45 45 45 45 45 00 48 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 00 45 00 45 00 00 45 00 45 45 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 45 00 00 45 45 00 45 45 00 45 00 00 45 00 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 00 00 45 45 00 00 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 45 00 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 49 45 45 45 45 00 00 00 45 45 00 00 00 00 45 45 45 00 45 45 00 45 45 45 00 45 00 45 45 45 45 00 45 45 45 00 45 45 45 00 45 00 45 00 45 45 00 45 00 49 45 45 45 00 00 45 00 00 00 00 45 45 45 00 00 00 45 45 45 45 00 00 45 45 00 45 45 45 00 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 00 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 00 45 45 45 45 00 45 00 45 45 45 45 45 00 45 45 45 45 00 00 45 45 00 45 45 00 45 00 45 45 45 45 00 00 45 45 45 00 00 45 45 45 45 45 45 45 45 00 45 45 00 45 00 45 45 48 45 45 00 45 00 00 45 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 45 45 45 45 00 45 45 00 00 00 00 00 45 00 45 00 00 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 00 45 45 45 45 45 00 00 00 45 45 00 00 45 45 45 00 45 45 00 00 45 00 45 45 00 45 45 45 45 45 00 00 45 45 45 45 45 00 45 45 00 45 45 00 45 45 45 00 00 45 00 45 45 00 45 45 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 00 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 00 48 45 00 45 45 45 45 45 00 45 45 45 45 48 45 45 00 45 00 45 00 45 45 00 00 45 45 45 45 00 45 00 45 45 00 45 45 45 00 45 45 48 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 45 45 45 00 00 45 00 00 45 45 45 45 45 00 45 45 45 00 00 00 45 00 45 45 00 45 00 45 45 45 45 45 00 00 45 45 45 45 45 45 45 00 00 00 00 45 45 45 00 45 45 45 45 45 45 45 45 00 45 45 00 45 45 00 45 45 00 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 00 45 45 45 00 45 00 45 45 45 00 00 45 45 45 00 45 00 00 45 00 45 45 45 00 00 45 45 45 00 45 45 45 45 00 45 00 45 45 45 45 45 44 45 45 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 00 00 45 00 45 00 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 00 00 45 45 00 45 00 45 45 45 45 45 45 00 45 45 00 00 00 45 00 45 45 45 00 45 45 00 45 00 45 00 00 45 45 45 45 45 45 00 00 45 45 00 45 45 45 00 45 45 00 45 45 00 45 45 45 00 45 45 00 45 45 00 45 00 45 45 45 00 45 45 45 45 45 00 45 45 00 00 45 45 45 45 45 45 45 45 45 00 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 45 45 00 45 00 00 45 45 45 45 45 45 00 45 45 45 45 45 45 45 48 45 45 45 45 45 45 45 45 45 45 45 45 00 45 45 00 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 45 45 45 45 45 45 45 45 45 00 45 00 45 45 00 45 45
*/
