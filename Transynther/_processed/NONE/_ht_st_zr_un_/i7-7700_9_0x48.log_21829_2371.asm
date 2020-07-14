.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1a479, %rsi
lea addresses_D_ht+0x1ea77, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %rax
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $23780, %r11
lea addresses_WC_ht+0xf519, %rsi
nop
nop
nop
nop
xor $23280, %r13
movl $0x61626364, (%rsi)
and $46693, %rsi
lea addresses_D_ht+0x15a09, %rcx
nop
nop
nop
and $62715, %rbp
mov (%rcx), %r13w
nop
nop
nop
cmp $27586, %rdi
lea addresses_UC_ht+0x82d0, %rax
nop
nop
nop
inc %rsi
mov (%rax), %bp
nop
nop
nop
nop
and $50379, %rbp
lea addresses_UC_ht+0x1799, %rsi
lea addresses_WC_ht+0x4699, %rdi
nop
sub %r12, %r12
mov $7, %rcx
rep movsb
nop
nop
cmp %rax, %rax
lea addresses_D_ht+0x19c79, %r12
nop
nop
nop
nop
cmp %r11, %r11
mov (%r12), %ecx
nop
nop
nop
nop
sub $42713, %rax
lea addresses_A_ht+0x178ca, %rsi
clflush (%rsi)
nop
nop
nop
nop
xor $55292, %r11
movb $0x61, (%rsi)
nop
nop
nop
nop
xor $31232, %r11
lea addresses_UC_ht+0x11d05, %rsi
lea addresses_WT_ht+0x1b1b9, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $82, %rcx
rep movsl
nop
nop
nop
and $58463, %r11
lea addresses_WT_ht+0x17479, %rbp
nop
nop
cmp $55270, %r13
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rbp)
nop
add $16703, %r13
lea addresses_normal_ht+0x13c99, %rsi
lea addresses_D_ht+0x16779, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $42, %rcx
rep movsb
nop
nop
nop
nop
and $58857, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rcx

// Store
lea addresses_UC+0x62f9, %r8
nop
nop
and $33201, %rbp
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r8)
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_RW+0x1dd1, %rbp
nop
nop
nop
nop
nop
cmp $41824, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rbp)
add %r8, %r8

// Store
lea addresses_UC+0x1ac99, %r11
nop
nop
nop
sub %rbx, %rbx
movl $0x51525354, (%r11)
nop
nop
nop
nop
sub $9618, %r9

// Faulty Load
lea addresses_WC+0xa479, %r8
xor %r9, %r9
mov (%r8), %rbx
lea oracles, %r11
and $0xff, %rbx
shlq $12, %rbx
mov (%r11,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 10, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'53': 1532, 'ae': 1, '47': 1365, '3c': 11, 'ff': 10137, '01': 842, 'a0': 59, '80': 2, '46': 25, '44': 7, '00': 7846, 'e0': 2}
00 47 00 ff 53 00 47 ff ff 00 ff 00 ff ff ff 00 ff 00 ff ff ff 01 53 00 ff ff 00 ff 01 ff 01 00 ff ff ff ff 47 ff 00 ff 00 00 ff ff 01 00 ff 00 00 ff 00 ff 00 00 ff ff 00 00 00 00 00 ff 00 00 00 ff 00 00 00 00 53 00 00 00 53 ff ff ff ff ff ff ff 01 ff 53 ff 00 ff 53 ff 00 ff ff 00 00 53 ff 47 ff 01 00 ff 00 ff 00 ff 00 ff 00 ff 00 ff ff ff 00 ff 47 ff 00 ff 01 00 ff ff 00 ff 00 00 00 53 00 47 00 ff ff ff ff 00 ff ff 00 00 ff 00 ff 00 47 ff 00 ff 00 ff 00 ff ff 00 ff 47 ff 53 00 ff ff 53 00 00 47 ff 00 00 00 53 ff ff 00 ff 47 00 00 00 00 ff 00 ff 00 ff ff ff 00 53 00 ff ff 00 ff 47 ff 00 00 ff ff ff ff ff 53 ff 00 ff ff ff 01 00 47 00 00 ff ff ff ff 00 ff 00 00 ff 47 ff 00 ff ff ff 01 00 00 ff 53 ff 00 00 53 47 00 ff 00 00 53 ff ff ff 00 00 00 ff 00 00 00 ff ff 53 00 ff 53 00 ff 00 00 ff 00 00 ff ff ff 00 ff ff 00 ff 00 00 ff ff 00 ff 00 47 47 ff ff ff 00 ff 00 00 00 00 00 53 ff 00 00 00 ff ff ff 47 00 53 53 00 47 00 00 ff 00 00 53 ff 47 53 00 ff ff ff 53 ff ff ff 00 ff 00 00 47 ff 00 00 00 ff 00 00 47 ff ff ff 00 ff ff 00 00 00 47 ff 47 00 ff ff ff 00 00 00 ff ff 00 00 ff 00 ff 00 00 00 ff ff 47 ff 47 00 00 53 ff ff ff 53 00 ff ff ff 00 ff 00 ff ff ff ff 53 00 ff 47 00 47 00 00 00 00 00 00 00 ff 00 47 ff ff ff 00 ff ff ff ff ff 00 ff 00 ff 00 ff 53 ff ff 53 ff 01 ff 00 ff 00 ff ff ff ff 00 00 ff ff 00 ff 01 53 00 ff 00 ff ff ff 00 ff 00 ff 00 ff 00 00 00 00 ff ff 00 53 ff 00 ff 00 ff 00 ff ff ff 00 ff 01 ff 53 ff 00 ff ff 47 53 00 ff 00 ff ff 00 00 ff a0 00 47 47 ff 00 00 ff 53 ff 53 00 ff ff ff ff 53 ff ff ff 00 00 ff 00 ff ff ff 01 47 ff ff 00 00 00 00 ff ff 00 00 ff 53 00 ff ff ff ff ff 00 ff 47 ff 00 00 ff ff 01 ff 00 ff 00 00 00 00 ff ff 53 53 00 53 ff ff ff 47 ff 00 ff 00 00 00 47 00 47 53 00 ff 00 ff 00 ff ff 00 ff ff ff ff 00 ff 00 ff ff 00 ff 00 ff ff 01 00 47 ff ff 00 ff 00 ff 53 ff 47 00 00 ff ff 47 53 ff ff ff ff ff ff 00 47 00 00 ff ff 00 ff 00 ff 00 ff ff ff 01 ff 01 ff 00 ff ff 00 00 00 00 ff 00 ff ff ff ff 01 53 ff ff ff ff ff ff 01 00 00 ff ff ff ff 00 00 00 ff ff ff 00 00 47 47 00 ff ff 00 00 ff ff 00 47 00 ff 00 53 00 ff ff ff 01 47 53 ff ff ff ff 00 53 ff 00 00 ff ff 00 00 00 00 00 ff 00 ff ff 00 00 ff ff 47 00 00 ff ff 47 ff 00 00 00 ff ff 00 ff 53 00 ff 00 00 00 ff 00 00 ff ff 00 00 00 ff ff 00 ff 00 53 ff ff 00 ff ff 00 00 ff 00 00 53 00 ff ff ff 00 47 53 ff 00 ff 00 00 00 47 00 ff 00 00 53 ff 53 ff 00 ff 00 ff 00 00 47 00 00 ff 00 00 ff ff 00 ff 00 ff ff ff ff 47 00 ff ff 00 ff 00 53 ff 00 00 ff 00 00 00 ff ff 47 ff 00 ff ff ff ff 01 00 ff 00 ff 00 a0 ff 00 ff 00 ff ff 00 ff 00 00 ff ff 53 ff 00 47 00 ff 00 ff ff ff 53 ff ff 00 ff ff 47 00 00 ff ff 53 00 47 00 ff 00 ff 00 53 00 ff 00 53 ff 00 53 00 ff 00 00 00 47 00 53 ff ff 00 ff 00 00 ff ff ff ff 00 ff ff ff ff 01 00 ff 00 ff ff ff ff 01 ff 01 53 ff ff ff 00 00 ff 00 ff 00 ff ff 00 00 53 00 ff ff 00 ff ff 01 ff 00 47 00 00 ff 00 ff ff 00 00 47 ff 00 ff 47 ff ff ff 47 ff ff ff 00 ff ff 00 47 ff ff 01 53 ff ff 01 00 ff 00 00 ff ff ff ff 01 53 53 ff 00 ff 53 47 ff 53 ff 53
*/
