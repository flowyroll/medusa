.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x493a, %rsi
inc %rax
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
cmp $18004, %r13
lea addresses_WC_ht+0xe378, %rbp
nop
nop
nop
nop
nop
add $24248, %r15
mov $0x6162636465666768, %r9
movq %r9, (%rbp)
nop
nop
nop
xor %rbp, %rbp
lea addresses_normal_ht+0x1c43a, %rsi
nop
nop
sub $15313, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %rsi
movaps %xmm4, (%rsi)
nop
nop
nop
nop
nop
add $12975, %rbp
lea addresses_WT_ht+0x1483a, %rsi
lea addresses_A_ht+0x8d6, %rdi
xor %r15, %r15
mov $90, %rcx
rep movsl
nop
nop
and $11769, %rbp
lea addresses_A_ht+0xdd3a, %r13
clflush (%r13)
add %rsi, %rsi
movb $0x61, (%r13)
nop
and %rbp, %rbp
lea addresses_UC_ht+0xa83a, %rcx
nop
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
add $33554, %rax
lea addresses_normal_ht+0x1a5da, %rsi
lea addresses_UC_ht+0x1c77e, %rdi
nop
nop
nop
nop
nop
xor %r9, %r9
mov $71, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x1143a, %rdi
nop
nop
nop
xor $52695, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0xa63a, %rax
nop
cmp $18497, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_D_ht+0xbe7a, %rsi
nop
nop
nop
nop
nop
sub $8026, %r9
movb (%rsi), %r13b
nop
nop
add $58402, %rbp
lea addresses_UC_ht+0xc978, %rsi
lea addresses_WT_ht+0x1a982, %rdi
nop
nop
add %r15, %r15
mov $124, %rcx
rep movsw
nop
nop
lfence
lea addresses_WC_ht+0x10c96, %rdi
nop
nop
nop
xor $40023, %r13
mov $0x6162636465666768, %rcx
movq %rcx, %xmm2
vmovups %ymm2, (%rdi)
nop
nop
dec %r15
lea addresses_D_ht+0x1993a, %rax
and %rsi, %rsi
and $0xffffffffffffffc0, %rax
movntdqa (%rax), %xmm1
vpextrq $0, %xmm1, %r9
nop
nop
nop
nop
cmp $25240, %rbp
lea addresses_WC_ht+0xf348, %rsi
lea addresses_WT_ht+0x577a, %rdi
nop
nop
nop
xor $27613, %r15
mov $34, %rcx
rep movsb
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r15
push %rbx
push %rdi

// Faulty Load
lea addresses_US+0x1d43a, %r12
nop
nop
nop
xor $51803, %r11
mov (%r12), %di
lea oracles, %rbx
and $0xff, %rdi
shlq $12, %rdi
mov (%rbx,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'00': 3}
00 00 00
*/
