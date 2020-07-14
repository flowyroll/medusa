.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1099d, %r8
nop
inc %rdx
movb $0x61, (%r8)
nop
add $2300, %r8
lea addresses_D_ht+0x1efa7, %rsi
lea addresses_WC_ht+0x12bc7, %rdi
nop
nop
nop
cmp $59719, %r15
mov $111, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $28559, %r15
lea addresses_WT_ht+0x3467, %rcx
nop
xor $25975, %rdx
mov (%rcx), %edi
nop
xor %r15, %r15
lea addresses_normal_ht+0x6507, %rcx
clflush (%rcx)
nop
inc %rdx
mov (%rcx), %r8d
nop
nop
nop
nop
nop
inc %r8
lea addresses_D_ht+0xc6c7, %rdi
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rdi)
nop
nop
nop
nop
and $47069, %r14
lea addresses_WT_ht+0x48a7, %rdi
nop
and $11144, %r15
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
sub $46577, %r15
lea addresses_WC_ht+0x42de, %rdx
nop
nop
nop
dec %rdi
mov (%rdx), %r8w
and $7303, %rsi
lea addresses_D_ht+0x8fa7, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor %r14, %r14
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm6
vpextrq $0, %xmm6, %rdx
dec %r15
lea addresses_normal_ht+0x1951f, %rsi
lea addresses_WC_ht+0x2fa7, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $22416, %r15
mov $25, %rcx
rep movsq
nop
nop
nop
and %rdi, %rdi
lea addresses_normal_ht+0x7f67, %rsi
lea addresses_WT_ht+0x1b705, %rdi
clflush (%rdi)
and $57248, %rax
mov $65, %rcx
rep movsl
sub %rsi, %rsi
lea addresses_A_ht+0xee3f, %rsi
lea addresses_WC_ht+0x7007, %rdi
nop
nop
xor %r14, %r14
mov $94, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_normal_ht+0xa7a7, %rsi
lea addresses_normal_ht+0x6ebf, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $67, %rcx
rep movsq
xor $9062, %rax
lea addresses_WC_ht+0x1bfa7, %rsi
lea addresses_D_ht+0x105, %rdi
nop
and $50580, %r14
mov $68, %rcx
rep movsq
cmp %rdx, %rdx
lea addresses_D_ht+0x1e4cc, %rsi
lea addresses_UC_ht+0x156a7, %rdi
nop
nop
inc %rdx
mov $26, %rcx
rep movsw
nop
nop
dec %r15
lea addresses_D_ht+0x162e7, %rsi
nop
nop
nop
nop
dec %rdx
movb (%rsi), %r8b
nop
nop
nop
dec %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rbx
push %rcx

// Store
lea addresses_UC+0x9335, %rcx
nop
lfence
mov $0x5152535455565758, %r13
movq %r13, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
sub %r9, %r9

// Load
mov $0x629fef00000005a7, %r15
nop
nop
nop
dec %r9
movups (%r15), %xmm5
vpextrq $1, %xmm5, %rcx
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_RW+0x1e3a7, %r15
nop
nop
nop
nop
and %r14, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm6
movups %xmm6, (%r15)
nop
nop
nop
and %r13, %r13

// Faulty Load
mov $0x6ab02200000007a7, %r11
nop
nop
nop
add $51736, %rcx
movb (%r11), %bl
lea oracles, %rcx
and $0xff, %rbx
shlq $12, %rbx
mov (%rcx,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'00': 185}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
