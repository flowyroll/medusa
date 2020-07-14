.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x15f10, %rsi
lea addresses_WC_ht+0x13c60, %rdi
nop
nop
nop
nop
nop
and %r12, %r12
mov $39, %rcx
rep movsq
nop
dec %r15
lea addresses_normal_ht+0x31e4, %r10
xor $55839, %r14
mov (%r10), %r12w
nop
nop
nop
nop
nop
and $14700, %r14
lea addresses_WT_ht+0x12eb0, %rsi
lea addresses_UC_ht+0x16a50, %rdi
nop
nop
nop
sub %rax, %rax
mov $17, %rcx
rep movsw
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x1a4c8, %r12
nop
nop
add $11876, %rsi
and $0xffffffffffffffc0, %r12
vmovntdqa (%r12), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r15
nop
nop
nop
nop
nop
cmp $65206, %rdi
lea addresses_UC_ht+0x52fc, %r10
clflush (%r10)
nop
cmp $51312, %r14
mov (%r10), %rsi
xor %r14, %r14
lea addresses_D_ht+0x9003, %r10
cmp $52749, %r14
mov $0x6162636465666768, %r12
movq %r12, %xmm5
movups %xmm5, (%r10)
nop
nop
cmp $58043, %r14
lea addresses_WC_ht+0x175a8, %r14
cmp %rsi, %rsi
movb $0x61, (%r14)
nop
nop
inc %rsi
lea addresses_UC_ht+0x1cea8, %rax
nop
xor %r14, %r14
movb (%rax), %r15b
cmp $40853, %r10
lea addresses_D_ht+0x144c8, %rsi
lea addresses_D_ht+0xa928, %rdi
nop
nop
nop
nop
sub $22067, %r10
mov $111, %rcx
rep movsb
nop
nop
nop
and $11937, %rdi
lea addresses_normal_ht+0x44a8, %rdi
nop
nop
nop
xor $16440, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
xor %r14, %r14
lea addresses_D_ht+0x7ea8, %rsi
nop
nop
nop
sub %rax, %rax
vmovups (%rsi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x18ea8, %rdi
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm4
vmovups %ymm4, (%rdi)
nop
add %rdi, %rdi
lea addresses_D_ht+0x16368, %rcx
nop
nop
and %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rcx)
cmp $1320, %rax
lea addresses_WT_ht+0xeb68, %r12
nop
dec %rdi
mov $0x6162636465666768, %rax
movq %rax, (%r12)
nop
nop
nop
nop
inc %rax
lea addresses_UC_ht+0x106a8, %rcx
nop
add %r15, %r15
mov (%rcx), %r12w
nop
nop
cmp $33590, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1e668, %rsi
lea addresses_UC+0x6ce8, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $107, %rcx
rep movsq
nop
nop
xor %rdi, %rdi

// Load
lea addresses_normal+0x98a8, %r9
add $8793, %rbp
mov (%r9), %esi
xor $60629, %r9

// Faulty Load
lea addresses_US+0x36a8, %rdi
nop
nop
nop
sub %rsi, %rsi
mov (%rdi), %r12w
lea oracles, %rcx
and $0xff, %r12
shlq $12, %r12
mov (%rcx,%r12,1), %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 11}}
{'00': 1}
00
*/
