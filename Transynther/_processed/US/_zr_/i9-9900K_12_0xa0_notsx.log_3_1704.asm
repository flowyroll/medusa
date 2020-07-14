.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xcb8b, %rdi
nop
nop
nop
sub %r12, %r12
mov (%rdi), %r8w
nop
nop
sub $58807, %r10
lea addresses_WT_ht+0xa98b, %r9
clflush (%r9)
nop
nop
nop
nop
nop
and $24020, %rax
mov $0x6162636465666768, %r11
movq %r11, %xmm2
movups %xmm2, (%r9)
xor $25223, %r9
lea addresses_WC_ht+0x174eb, %rsi
lea addresses_WT_ht+0x109cb, %rdi
clflush (%rsi)
nop
nop
nop
add $31432, %r8
mov $99, %rcx
rep movsq
nop
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x625b, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
and $0xffffffffffffffc0, %rsi
vmovaps %ymm7, (%rsi)
xor %r9, %r9
lea addresses_UC_ht+0x10c8b, %rdi
nop
nop
nop
nop
add %rsi, %rsi
movl $0x61626364, (%rdi)
nop
nop
nop
nop
xor %r10, %r10
lea addresses_UC_ht+0x258b, %rsi
lea addresses_WC_ht+0xe70b, %rdi
nop
nop
nop
nop
nop
and $36258, %r12
mov $74, %rcx
rep movsl
nop
nop
nop
dec %r9
lea addresses_UC_ht+0x1778b, %r10
nop
nop
nop
mfence
movups (%r10), %xmm5
vpextrq $0, %xmm5, %rax
nop
cmp $31882, %rcx
lea addresses_UC_ht+0x863b, %rsi
lea addresses_D_ht+0x18a8b, %rdi
nop
nop
dec %r10
mov $89, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $19099, %r9
lea addresses_normal_ht+0x1b2af, %rsi
lea addresses_WT_ht+0x7647, %rdi
nop
nop
nop
nop
dec %r8
mov $61, %rcx
rep movsw
nop
nop
nop
and %r12, %r12
lea addresses_WT_ht+0x1328b, %r9
nop
nop
inc %rcx
movl $0x61626364, (%r9)
nop
nop
sub $25380, %r8
lea addresses_UC_ht+0x1444c, %r11
nop
nop
nop
nop
nop
and %r9, %r9
movw $0x6162, (%r11)
nop
nop
nop
nop
inc %r12
lea addresses_WT_ht+0x1f8b, %rsi
lea addresses_WT_ht+0x1933f, %rdi
nop
cmp %r9, %r9
mov $5, %rcx
rep movsw
nop
sub $6882, %rsi
lea addresses_normal_ht+0x4b6b, %r9
nop
nop
nop
nop
xor $40585, %r11
vmovups (%r9), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rax
and $7757, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rdx

// Faulty Load
lea addresses_US+0x3f8b, %rdx
nop
sub %r11, %r11
movb (%rdx), %r13b
lea oracles, %rdx
and $0xff, %r13
shlq $12, %r13
mov (%rdx,%r13,1), %r13
pop %rdx
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'00': 3}
00 00 00
*/
