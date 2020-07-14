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
lea addresses_normal_ht+0xeeec, %rcx
nop
nop
cmp %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
sub $33972, %rcx
lea addresses_WC_ht+0x822c, %r9
nop
nop
inc %rax
movb (%r9), %r10b
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x19eb0, %rsi
lea addresses_WT_ht+0x212c, %rdi
clflush (%rdi)
nop
nop
nop
nop
add $26541, %r13
mov $55, %rcx
rep movsb
nop
cmp %rax, %rax
lea addresses_WC_ht+0x8c0c, %r10
nop
sub $10830, %rcx
mov (%r10), %edi
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0x1676c, %rsi
lea addresses_A_ht+0xee2c, %rdi
nop
nop
nop
and $2425, %r9
mov $112, %rcx
rep movsl
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0xaeec, %rax
nop
nop
nop
cmp $62666, %rsi
mov $0x6162636465666768, %r13
movq %r13, (%rax)
nop
nop
nop
cmp $59938, %rdi
lea addresses_WC_ht+0x113ac, %rsi
clflush (%rsi)
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0xbe1f, %r8
nop
nop
nop
nop
nop
sub $26695, %rax
vmovups (%r8), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rsi
nop
nop
nop
and %r9, %r9
lea addresses_D_ht+0x482c, %r10
nop
nop
nop
nop
xor %r8, %r8
mov $0x6162636465666768, %rax
movq %rax, (%r10)
nop
nop
and %rsi, %rsi
lea addresses_A_ht+0x2ebc, %rsi
lea addresses_normal_ht+0xbcac, %rdi
nop
nop
nop
cmp $24435, %r10
mov $14, %rcx
rep movsw
nop
sub $24742, %r10
lea addresses_WT_ht+0x62c, %rdi
nop
nop
nop
nop
and %r13, %r13
vmovups (%rdi), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
inc %r9
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
push %r10
push %r11
push %r13
push %r14
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1352c, %rdx
nop
xor $13881, %r13
movw $0x5152, (%rdx)
nop
nop
nop
and $418, %rdx

// REPMOV
lea addresses_D+0x11694, %rsi
lea addresses_WC+0x1162c, %rdi
nop
nop
nop
nop
xor $31271, %r13
mov $65, %rcx
rep movsq
nop
nop
sub $661, %r11

// Load
lea addresses_RW+0xf3ac, %r13
add %rdx, %rdx
mov (%r13), %r10d
nop
sub %rdx, %rdx

// Faulty Load
mov $0xe2c, %rdi
and $14979, %rcx
mov (%rdi), %dx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_D', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'00': 1}
00
*/
