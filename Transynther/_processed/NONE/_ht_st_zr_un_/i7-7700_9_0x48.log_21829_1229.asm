.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1033f, %rsi
lea addresses_WT_ht+0xdbbf, %rdi
nop
nop
nop
nop
sub $13058, %r14
mov $59, %rcx
rep movsl
nop
nop
nop
nop
sub $62908, %r10
lea addresses_normal_ht+0x1383f, %rsi
lea addresses_UC_ht+0x153bf, %rdi
nop
nop
nop
nop
nop
xor $28, %rbp
mov $71, %rcx
rep movsb
nop
nop
nop
nop
sub $22330, %rcx
lea addresses_WC_ht+0x1ba3, %r14
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
and $34201, %r14
lea addresses_D_ht+0x513f, %rdi
nop
nop
nop
nop
sub %r15, %r15
movl $0x61626364, (%rdi)
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0xe1ef, %rcx
nop
cmp %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%rcx)
nop
cmp %r15, %r15
lea addresses_A_ht+0x1d7bf, %rdi
add $43666, %rbp
mov (%rdi), %r15w
nop
sub $5449, %rdi
lea addresses_WC_ht+0x236f, %rcx
nop
nop
nop
cmp %r15, %r15
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
add $60149, %rdi
lea addresses_D_ht+0x517f, %rsi
lea addresses_WC_ht+0x6987, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $61, %rcx
rep movsq
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0x37bf, %rsi
lea addresses_WC_ht+0x4a3f, %rdi
nop
nop
nop
nop
dec %r15
mov $93, %rcx
rep movsq
and $28298, %rcx
lea addresses_normal_ht+0x8dbf, %r14
nop
nop
nop
nop
add %r15, %r15
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rsi
nop
nop
lfence
lea addresses_UC_ht+0xc3bf, %r10
nop
and $62868, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
movups %xmm4, (%r10)
nop
nop
nop
nop
cmp $48780, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rsi

// Store
lea addresses_UC+0x13caf, %r12
sub %rsi, %rsi
movw $0x5152, (%r12)
nop
and $12126, %rsi

// Store
mov $0x69038500000009bf, %rbx
nop
nop
nop
nop
sub %r8, %r8
mov $0x5152535455565758, %r11
movq %r11, (%rbx)
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_A+0x1e9ff, %r12
nop
nop
nop
nop
sub %r14, %r14
movb $0x51, (%r12)
nop
nop
inc %rbx

// Faulty Load
lea addresses_WC+0x2bbf, %rsi
nop
nop
add $42344, %r8
mov (%rsi), %r12
lea oracles, %rax
and $0xff, %r12
shlq $12, %r12
mov (%rax,%r12,1), %r12
pop %rsi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 9, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 6, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 7, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'53': 341, '47': 98, '3c': 4, 'ff': 8733, '01': 271, 'a2': 1, '48': 812, 'a8': 1, '46': 1194, '44': 1289, 'd0': 2724, '00': 6299, 'c6': 1, '10': 1, 'e0': 1, '45': 59}
d0 ff ff ff 01 46 ff ff 00 ff 48 44 ff 48 ff 00 00 ff 00 ff ff ff ff ff 00 44 ff 01 ff ff 01 ff 01 00 ff ff ff ff 01 00 44 ff ff 44 ff 00 44 ff 01 00 46 ff d0 ff 46 ff ff ff 46 ff 01 44 ff 00 ff ff 00 ff ff 01 ff ff 00 ff 01 ff 01 48 ff 01 ff ff ff 01 ff 01 ff ff 01 ff 01 ff 00 ff 01 00 46 53 ff ff ff 01 ff ff 01 ff 48 ff 01 00 48 ff ff 00 ff 48 00 46 53 ff d0 ff 00 ff 00 48 48 45 00 00 00 48 ff ff d0 53 ff d0 00 ff d0 46 48 00 ff d0 ff ff d0 ff d0 ff d0 ff 00 ff 46 48 00 44 ff 00 ff d0 00 00 46 ff ff ff d0 00 ff d0 00 00 ff d0 ff 00 ff d0 00 ff d0 ff d0 00 ff ff d0 ff 00 00 45 ff ff ff 00 ff d0 00 46 ff ff 48 44 ff 48 ff ff 48 ff 00 ff ff ff ff ff 46 48 00 00 ff 00 00 ff ff 46 ff d0 48 ff ff ff ff d0 ff d0 ff 00 ff ff ff ff ff 00 ff 01 00 00 46 ff d0 00 00 44 ff ff d0 46 48 00 45 ff d0 ff ff 00 48 ff 46 ff d0 ff 01 00 00 ff 48 ff ff d0 48 46 ff 00 ff d0 46 00 00 46 44 ff ff d0 ff d0 ff ff d0 00 48 ff 00 ff 00 00 00 ff 00 00 46 ff ff ff ff d0 ff 00 53 ff ff d0 ff ff ff 01 46 48 00 46 ff ff ff 47 00 48 ff 00 00 ff ff ff ff d0 00 ff 48 00 ff ff ff 46 00 48 44 ff d0 48 00 ff 48 ff 00 ff d0 46 00 53 46 ff 00 00 44 ff ff d0 ff d0 48 48 46 ff d0 00 47 44 ff d0 ff d0 44 ff 00 46 ff ff ff 53 ff d0 48 ff ff ff d0 ff 00 00 44 ff ff d0 48 00 ff d0 ff d0 00 44 ff ff ff ff ff 01 ff 01 ff 01 48 ff 46 48 00 45 ff ff d0 00 ff 48 ff ff d0 00 44 00 ff ff 00 ff d0 00 ff ff ff 46 ff ff ff ff 01 48 ff d0 ff ff ff ff 01 00 48 ff 01 ff 48 ff 01 ff ff 01 ff 01 ff ff 01 46 00 44 ff 00 ff d0 46 ff 46 ff ff ff 00 00 53 ff d0 46 ff 00 00 ff d0 ff ff d0 ff d0 00 44 ff ff 44 ff d0 ff ff ff d0 ff ff ff ff 01 ff 01 00 ff 01 48 48 46 ff 00 ff 46 00 48 44 44 00 00 ff d0 ff ff 00 ff ff 00 ff 00 00 ff d0 46 ff ff 00 ff 00 46 00 ff ff ff ff ff 00 ff 00 ff d0 ff 48 44 ff 00 44 ff d0 48 46 53 00 00 ff 00 00 ff d0 00 00 ff ff d0 ff 00 ff ff ff 00 44 ff 00 ff ff d0 00 ff d0 00 ff d0 46 48 53 44 00 ff ff ff ff d0 ff ff 01 46 53 44 ff 00 53 ff ff ff 00 44 ff 48 44 44 ff 53 ff d0 00 ff ff 00 ff d0 ff 00 44 ff 00 00 ff ff d0 44 ff 00 ff d0 ff 53 ff ff 00 ff 00 00 46 ff ff ff 00 48 ff ff 00 46 53 46 ff ff ff 01 44 ff ff d0 46 00 48 ff d0 ff d0 ff ff ff ff ff ff 01 46 00 44 ff d0 47 ff ff 00 44 ff ff ff ff 01 44 ff ff 44 00 00 ff 46 00 00 44 ff ff ff d0 48 44 ff ff d0 46 44 ff ff ff 46 ff ff 00 00 44 ff ff d0 ff ff ff d0 00 53 44 ff 00 ff d0 ff d0 ff d0 ff d0 ff ff ff d0 ff 48 ff d0 00 00 00 46 44 ff ff ff 00 ff ff ff 01 ff 48 ff 00 00 46 ff d0 ff ff d0 00 46 46 47 ff d0 ff d0 44 ff d0 ff 44 46 48 00 45 ff d0 00 00 44 ff d0 ff 44 ff ff d0 46 00 48 ff 00 ff d0 44 46 00 48 44 ff 00 ff 48 00 ff 00 00 48 ff ff ff ff 00 44 44 ff d0 ff ff 00 48 44 47 00 ff 53 ff d0 ff ff 44 ff 00 ff d0 ff ff 00 ff 44 ff d0 48 ff ff 00 00 44 ff 00 ff 00 00 00 44 ff ff d0 ff d0 00 00 46 ff d0 ff ff 00 00 44 ff 48 00 ff d0 48 ff d0 ff 00 ff ff 00 46 ff 00 47 ff 00 00 44 ff 00 ff 00 ff 00 00 00 53 ff d0 00 00 44 ff ff 00 ff 00 ff d0 00 00 46 ff 48 00 ff ff d0 00 44 ff ff d0 ff 00 ff d0 00 ff ff d0 00 48 00 ff 00 ff ff
*/
