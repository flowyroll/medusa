.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x922d, %r14
nop
nop
nop
nop
xor %r12, %r12
movw $0x6162, (%r14)
nop
nop
cmp $27925, %rbp
lea addresses_WT_ht+0x1382d, %rsi
lea addresses_WT_ht+0x8a2d, %rdi
xor $52112, %r11
mov $67, %rcx
rep movsb
nop
nop
inc %rsi
lea addresses_WT_ht+0x162d, %rdi
nop
lfence
vmovups (%rdi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r11
nop
nop
nop
xor $2062, %rsi
lea addresses_A_ht+0x7e2d, %rsi
lea addresses_WC_ht+0x97f1, %rdi
nop
nop
sub $47979, %r11
mov $27, %rcx
rep movsq
nop
nop
nop
nop
xor $16200, %r12
lea addresses_normal_ht+0x1351d, %rdi
nop
nop
nop
nop
and $15055, %r12
movups (%rdi), %xmm7
vpextrq $0, %xmm7, %r11
nop
sub %r14, %r14
lea addresses_UC_ht+0x7c6d, %rsi
lea addresses_A_ht+0x642d, %rdi
nop
nop
inc %rbp
mov $65, %rcx
rep movsw
nop
cmp %rsi, %rsi
lea addresses_WC_ht+0x1822d, %r11
xor %rdi, %rdi
mov (%r11), %ecx
nop
nop
inc %rcx
lea addresses_A_ht+0x91ad, %rsi
nop
nop
nop
nop
sub $2163, %r15
movl $0x61626364, (%rsi)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x6aed, %rbp
and %rcx, %rcx
mov $0x6162636465666768, %r11
movq %r11, %xmm6
and $0xffffffffffffffc0, %rbp
movaps %xmm6, (%rbp)
nop
nop
nop
inc %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rsi

// Faulty Load
lea addresses_D+0x1c62d, %r13
nop
nop
nop
nop
inc %rsi
movups (%r13), %xmm7
vpextrq $1, %xmm7, %rbx
lea oracles, %r13
and $0xff, %rbx
shlq $12, %rbx
mov (%r13,%rbx,1), %rbx
pop %rsi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'36': 88}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
