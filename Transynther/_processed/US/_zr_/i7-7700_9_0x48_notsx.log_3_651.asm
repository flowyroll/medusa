.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r8
push %rax
push %rbx
push %rsi
lea addresses_D_ht+0xf26e, %rsi
nop
nop
nop
and %r11, %r11
movw $0x6162, (%rsi)
nop
xor $42704, %rsi
lea addresses_UC_ht+0x1844c, %r13
nop
nop
nop
nop
add %r8, %r8
movb (%r13), %al
nop
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0x45cc, %r13
clflush (%r13)
nop
nop
nop
and %rbx, %rbx
movw $0x6162, (%r13)
nop
nop
nop
nop
sub %r11, %r11
lea addresses_normal_ht+0x44c, %r8
clflush (%r8)
nop
nop
nop
nop
nop
mfence
mov $0x6162636465666768, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r8)
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WT_ht+0xfe4c, %rsi
sub %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm3
movups %xmm3, (%rsi)
nop
nop
cmp $41567, %rsi
lea addresses_normal_ht+0xe98c, %r8
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r8)
nop
nop
nop
nop
nop
cmp $13043, %r13
lea addresses_WT_ht+0x1874c, %rbx
nop
nop
dec %r11
mov (%rbx), %r10d
nop
nop
nop
nop
nop
cmp $37408, %r13
lea addresses_WT_ht+0x1534c, %r8
nop
nop
nop
nop
xor $16897, %rbx
mov $0x6162636465666768, %r13
movq %r13, %xmm6
and $0xffffffffffffffc0, %r8
movntdq %xmm6, (%r8)
nop
nop
nop
nop
nop
add $8622, %r11
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %rbx
push %rcx
push %rdx

// Faulty Load
lea addresses_US+0x774c, %rcx
nop
xor %r11, %r11
mov (%rcx), %ebx
lea oracles, %rdx
and $0xff, %rbx
shlq $12, %rbx
mov (%rdx,%rbx,1), %rbx
pop %rdx
pop %rcx
pop %rbx
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'00': 3}
00 00 00
*/
