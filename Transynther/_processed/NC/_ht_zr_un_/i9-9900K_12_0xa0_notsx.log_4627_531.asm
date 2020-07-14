.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1eed2, %r13
nop
nop
nop
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
movups %xmm2, (%r13)
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xdcd2, %rcx
nop
nop
nop
dec %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rcx)
nop
sub $57484, %rax
lea addresses_D_ht+0x544a, %r15
nop
nop
nop
nop
nop
xor $53851, %rax
movb $0x61, (%r15)
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x6452, %r13
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
and $0xffffffffffffffc0, %r13
movaps %xmm1, (%r13)
nop
nop
nop
nop
nop
cmp $4662, %rbp
lea addresses_normal_ht+0x110d2, %r13
clflush (%r13)
nop
and $23189, %r15
mov (%r13), %rbp
nop
lfence
lea addresses_normal_ht+0x11f1a, %rsi
lea addresses_WC_ht+0x14452, %rdi
clflush (%rsi)
nop
add %rax, %rax
mov $83, %rcx
rep movsl
nop
nop
nop
nop
sub %r11, %r11
lea addresses_UC_ht+0x9e12, %rsi
nop
nop
nop
nop
nop
add %r11, %r11
movl $0x61626364, (%rsi)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0x178d2, %r11
nop
nop
nop
nop
nop
and $59539, %rax
movl $0x61626364, (%r11)
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x87c2, %r15
nop
nop
nop
nop
nop
cmp $55128, %rcx
movb (%r15), %al
and $53396, %r15
lea addresses_WT_ht+0x16752, %rsi
lea addresses_WC_ht+0x14ebf, %rdi
nop
nop
dec %r15
mov $7, %rcx
rep movsw
xor $2364, %rcx
lea addresses_WC_ht+0x112d2, %rsi
lea addresses_UC_ht+0x12cd2, %rdi
clflush (%rsi)
nop
nop
sub %r15, %r15
mov $123, %rcx
rep movsw
nop
nop
nop
nop
nop
xor $56884, %rsi
lea addresses_normal_ht+0x1a0d6, %rcx
nop
nop
nop
nop
nop
xor $48824, %r12
movb $0x61, (%rcx)
add $4782, %r15
lea addresses_normal_ht+0x13580, %rsi
lea addresses_D_ht+0x14cd4, %rdi
nop
and %r12, %r12
mov $52, %rcx
rep movsw
cmp $12040, %r15
lea addresses_D_ht+0x7d59, %rax
nop
nop
nop
cmp $44743, %rsi
movups (%rax), %xmm3
vpextrq $1, %xmm3, %r15
nop
nop
nop
sub $559, %r15
lea addresses_WT_ht+0x7fd2, %r12
nop
nop
nop
dec %r13
movb $0x61, (%r12)
nop
xor %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r15
push %r9

// Faulty Load
mov $0x1065cb0000000cd2, %r11
nop
sub %r15, %r15
vmovups (%r11), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %r9
pop %r15
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': True, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 5}}
{'72': 3, '44': 4134, '00': 490}
44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 00 44 44 00 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 00 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 00 44 44 44 44 44 00 44 00 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 72 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 00 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 00 44 44 00 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 00 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 00 44 44 00 00 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44
*/
