.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x18520, %rsi
lea addresses_UC_ht+0xa10c, %rdi
nop
dec %r9
mov $18, %rcx
rep movsl
and $20771, %rdx
lea addresses_UC_ht+0xb940, %r10
xor $54132, %rbx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm7
and $0xffffffffffffffc0, %r10
vmovntdq %ymm7, (%r10)
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0xf960, %r9
xor $16919, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%r9)
inc %r10
lea addresses_UC_ht+0xf560, %rsi
lea addresses_normal_ht+0x16760, %rdi
nop
nop
inc %r11
mov $86, %rcx
rep movsq
nop
nop
nop
cmp $60627, %rcx
lea addresses_A_ht+0x14984, %rsi
lea addresses_UC_ht+0x13360, %rdi
add %rbx, %rbx
mov $19, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x109f8, %rbx
clflush (%rbx)
cmp $9708, %r10
movl $0x61626364, (%rbx)
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x1a50a, %rsi
lea addresses_D_ht+0x13d60, %rdi
nop
nop
cmp %rdx, %rdx
mov $93, %rcx
rep movsq
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WT_ht+0x1c870, %r11
nop
add %rsi, %rsi
vmovups (%r11), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rbx
cmp %r10, %r10
lea addresses_D_ht+0xba38, %r10
nop
dec %rsi
movb (%r10), %r9b
nop
nop
nop
nop
sub $40399, %rdi
lea addresses_normal_ht+0x1a460, %rbx
nop
and %rcx, %rcx
mov (%rbx), %r11d
and %rcx, %rcx
lea addresses_WC_ht+0xc32d, %rcx
nop
xor $51208, %r9
movl $0x61626364, (%rcx)
nop
nop
and $31815, %rdx
lea addresses_WC_ht+0x1e640, %rcx
nop
nop
nop
nop
nop
inc %r11
movw $0x6162, (%rcx)
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x18f20, %rsi
nop
inc %r11
and $0xffffffffffffffc0, %rsi
movaps (%rsi), %xmm1
vpextrq $1, %xmm1, %r10
nop
nop
nop
dec %r9
lea addresses_D_ht+0xdf66, %rdi
sub %rcx, %rcx
movl $0x61626364, (%rdi)
nop
nop
cmp $21418, %rdx
lea addresses_D_ht+0x1bd60, %rcx
nop
nop
nop
nop
inc %rbx
movw $0x6162, (%rcx)
nop
nop
nop
cmp $43180, %r10
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r8
push %r9
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x3570220000000560, %rsi
nop
nop
xor $38164, %rdi
mov $0x5152535455565758, %r9
movq %r9, (%rsi)
nop
nop
nop
nop
nop
xor %r8, %r8

// Faulty Load
mov $0x3570220000000560, %r8
nop
nop
sub $48648, %rdx
movb (%r8), %r9b
lea oracles, %rbp
and $0xff, %r9
shlq $12, %r9
mov (%rbp,%r9,1), %r9
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 5, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'16': 4172, '00': 101}
16 16 16 16 16 00 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 00 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 16 16 16 16 16
*/
