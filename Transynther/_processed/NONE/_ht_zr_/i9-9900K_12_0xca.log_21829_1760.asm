.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x136b8, %rsi
lea addresses_WC_ht+0x1cae, %rdi
nop
cmp %r8, %r8
mov $59, %rcx
rep movsw
inc %r9
lea addresses_A_ht+0x11dae, %r14
nop
nop
nop
inc %rbx
movb (%r14), %r9b
sub %r8, %r8
lea addresses_D_ht+0xf1ae, %rbx
nop
nop
inc %rsi
movb (%rbx), %r8b
nop
nop
sub %rbx, %rbx
lea addresses_UC_ht+0x1c574, %r8
clflush (%r8)
add $48813, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r8)
sub %r14, %r14
lea addresses_WC_ht+0xa28e, %rsi
lea addresses_WC_ht+0x7cae, %rdi
nop
nop
nop
nop
xor $34031, %r11
mov $96, %rcx
rep movsw
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x182e, %rsi
lea addresses_normal_ht+0x306e, %rdi
clflush (%rsi)
nop
nop
sub %r8, %r8
mov $9, %rcx
rep movsl
nop
nop
nop
sub $42746, %rsi
lea addresses_UC_ht+0x282e, %r11
nop
cmp %r14, %r14
movups (%r11), %xmm6
vpextrq $1, %xmm6, %r9
cmp $7974, %r8
lea addresses_D_ht+0x46d4, %rbx
clflush (%rbx)
add %r8, %r8
mov (%rbx), %ecx
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xaf16, %r9
nop
nop
nop
nop
xor %r11, %r11
movups (%r9), %xmm6
vpextrq $1, %xmm6, %r8
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0xceae, %r11
nop
nop
nop
cmp %rdi, %rdi
movb $0x61, (%r11)
nop
nop
nop
nop
sub $652, %r8
lea addresses_WT_ht+0x1a7ae, %rbx
nop
nop
nop
nop
nop
add $57265, %r9
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x3e36, %rsi
lea addresses_D_ht+0xf06c, %rdi
nop
nop
nop
dec %rbx
mov $15, %rcx
rep movsl
nop
sub $65047, %rsi
lea addresses_A_ht+0xdaae, %rsi
lea addresses_D_ht+0x119f6, %rdi
clflush (%rdi)
cmp $41662, %rbx
mov $105, %rcx
rep movsl
inc %r8
lea addresses_WC_ht+0x19b2e, %r11
nop
nop
nop
nop
sub $48750, %r9
vmovups (%r11), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x14a2e, %r9
nop
dec %r11
mov (%r9), %r14w
dec %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Faulty Load
lea addresses_UC+0x1c6ae, %rcx
xor $35856, %rax
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rsi
lea oracles, %rcx
and $0xff, %rsi
shlq $12, %rsi
mov (%rcx,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': True, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'45': 1236, '00': 784, '48': 19809}
48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 00 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 00 45 48 48 48 48 48 48 48 00 48 48 48 48 00 48 48 48 48 48 48 48 45 00 48 48 48 48 48 48 48 48 48 48 45 45 45 00 48 48 45 48 45 48 48 45 45 48 48 48 45 00 45 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 45 45 45 45 00 48 48 48 48 48 48 48 00 48 48 48 48 48 00 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 45 45 45 45 48 48 48 48 48 45 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 45 45 45 45 45 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 45 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 45 45 45 45 48 48 48 48 48 48 48 48 48 48 45 00 48 48 48 48 48 00 48 48 45 45 45 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 45 48 48 00 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 45 45 45 45 45 45 45 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 45 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 00 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 45 48 48 48 48 48 48 48 48 48 45 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 45 45 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 45 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48 00 48 48 48 48 48 45 45 45 45 45 45 45 45 48 48 48 48 48 48 48 00 48 48 48 48 48 48 45 00 48 48 48 48 48 48 48 48 48 48 48 48 48 48 48
*/
