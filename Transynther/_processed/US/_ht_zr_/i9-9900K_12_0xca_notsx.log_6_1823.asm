.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1c028, %r11
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r11), %r15w
nop
nop
and $52199, %r13
lea addresses_UC_ht+0x1b290, %r14
nop
nop
xor %r10, %r10
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r15
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_UC_ht+0x1a6e8, %r10
clflush (%r10)
nop
xor $8696, %rdx
movl $0x61626364, (%r10)
inc %r13
lea addresses_normal_ht+0xcac8, %r13
nop
nop
nop
xor $13464, %r11
mov $0x6162636465666768, %r10
movq %r10, (%r13)
nop
nop
nop
nop
add $65339, %rdi
lea addresses_WT_ht+0x19714, %r13
dec %rdx
movups (%r13), %xmm0
vpextrq $0, %xmm0, %r11
nop
nop
nop
nop
inc %r13
lea addresses_WT_ht+0x10e08, %rsi
lea addresses_D_ht+0x1eec8, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $1, %rcx
rep movsl
nop
nop
xor $18570, %rdx
lea addresses_WT_ht+0x5ac8, %rdx
nop
nop
and $50747, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rdx)
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x18ac8, %rsi
lea addresses_WT_ht+0x108c8, %rdi
nop
nop
nop
dec %r15
mov $43, %rcx
rep movsq
nop
nop
nop
cmp $5064, %rdi
lea addresses_WC_ht+0x11468, %rsi
lea addresses_WT_ht+0x1aec8, %rdi
xor %r10, %r10
mov $96, %rcx
rep movsw
xor $30244, %r14
lea addresses_UC_ht+0x1b46a, %rsi
lea addresses_WC_ht+0x3148, %rdi
nop
nop
and %rdx, %rdx
mov $27, %rcx
rep movsl
nop
nop
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x1c970, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
movb $0x61, (%rdi)
nop
nop
nop
and $61382, %r10
lea addresses_D_ht+0x4fc8, %r11
nop
nop
nop
xor $8145, %r15
and $0xffffffffffffffc0, %r11
vmovntdqa (%r11), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $1, %xmm0, %r14
nop
nop
nop
inc %r11
lea addresses_normal_ht+0x18c12, %r11
clflush (%r11)
nop
nop
sub %rdx, %rdx
mov (%r11), %ecx
nop
nop
nop
nop
nop
add $4670, %r15
lea addresses_D_ht+0x16c8, %r13
nop
nop
nop
nop
add %rdx, %rdx
mov (%r13), %r10d
nop
nop
nop
nop
add $46437, %rsi
lea addresses_UC_ht+0x5688, %r13
xor $4603, %r15
mov $0x6162636465666768, %r10
movq %r10, (%r13)
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rsi

// Faulty Load
lea addresses_US+0x52c8, %r15
nop
nop
nop
nop
add %rsi, %rsi
vmovups (%r15), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r13
lea oracles, %rax
and $0xff, %r13
shlq $12, %r13
mov (%rax,%r13,1), %r13
pop %rsi
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'00': 4, '47': 2}
00 00 47 47 00 00
*/
