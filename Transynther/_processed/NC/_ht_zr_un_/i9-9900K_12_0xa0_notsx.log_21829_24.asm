.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x19aab, %r15
nop
nop
nop
nop
nop
add $12673, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%r15)
nop
nop
nop
and %r8, %r8
lea addresses_D_ht+0x5c2b, %rsi
nop
nop
nop
nop
dec %rax
movb (%rsi), %r11b
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_D_ht+0x5907, %rsi
lea addresses_A_ht+0x52ab, %rdi
nop
nop
xor $51361, %r8
mov $69, %rcx
rep movsw
nop
nop
nop
nop
nop
inc %r15
lea addresses_WC_ht+0x1eeab, %rsi
clflush (%rsi)
nop
and $15444, %r15
movb $0x61, (%rsi)
sub %rsi, %rsi
lea addresses_D_ht+0x13c2b, %rbp
nop
cmp %r15, %r15
mov (%rbp), %edi
nop
nop
nop
nop
nop
xor $33176, %rsi
lea addresses_D_ht+0xa433, %rsi
lea addresses_D_ht+0x310b, %rdi
nop
nop
nop
nop
sub %r15, %r15
mov $79, %rcx
rep movsw
nop
nop
nop
nop
xor %r15, %r15
lea addresses_UC_ht+0x963b, %rax
dec %rbp
mov (%rax), %r15d
nop
nop
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1a2ab, %rbp
nop
xor $13120, %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%rbp)
nop
nop
dec %rcx
lea addresses_WC_ht+0x126ab, %rsi
lea addresses_UC_ht+0x1a16f, %rdi
clflush (%rdi)
nop
nop
add $16753, %rax
mov $100, %rcx
rep movsq
and %rax, %rax
lea addresses_normal_ht+0x6eab, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $43076, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rdi)
nop
inc %r11
lea addresses_normal_ht+0xabeb, %rsi
lea addresses_A_ht+0xf747, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $93, %rcx
rep movsw
sub $4086, %rcx
lea addresses_WC_ht+0x170e7, %rsi
lea addresses_WC_ht+0xc57b, %rdi
and $52293, %r8
mov $35, %rcx
rep movsq
nop
add %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rdi
push %rsi

// Load
lea addresses_WT+0x633b, %r8
clflush (%r8)
nop
nop
nop
nop
add %rsi, %rsi
mov (%r8), %r12
nop
nop
sub $39528, %rsi

// Store
lea addresses_WT+0x30eb, %r15
nop
nop
nop
nop
xor %r11, %r11
movl $0x51525354, (%r15)
nop
nop
and $1683, %rsi

// Faulty Load
mov $0xc31490000000eab, %r12
nop
and %rdi, %rdi
movups (%r12), %xmm4
vpextrq $1, %xmm4, %r8
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'08': 1, '48': 7455, 'cf': 1, '44': 6273, '00': 8099}
00 00 44 00 44 44 44 44 00 00 44 44 44 00 00 00 44 44 00 48 00 44 00 00 48 00 48 00 48 00 48 00 44 44 48 48 48 00 00 00 48 00 48 00 48 00 44 44 00 44 48 48 48 48 48 00 44 44 44 48 44 00 00 48 00 48 00 48 00 44 00 00 48 48 48 48 48 48 48 48 44 48 48 48 48 00 00 48 48 00 48 48 48 48 44 00 48 00 00 00 00 00 00 00 44 44 48 00 00 44 44 44 48 48 48 48 00 00 48 00 00 00 48 00 48 48 44 00 48 48 48 48 00 48 00 48 48 48 00 00 00 00 48 00 00 44 44 44 44 00 48 48 48 48 00 44 48 48 48 48 00 48 00 48 48 48 00 48 48 44 48 48 48 48 48 48 48 00 00 00 00 00 48 48 48 00 00 48 48 48 48 00 48 00 00 00 48 00 48 48 48 00 00 44 44 48 48 44 48 00 44 44 48 48 48 48 00 48 00 00 48 00 48 48 00 00 00 48 00 48 48 44 48 48 48 00 44 48 48 00 00 48 44 48 00 00 00 00 00 48 48 48 00 48 48 00 48 48 00 48 48 00 00 00 44 44 00 48 48 00 48 44 00 00 00 00 00 00 00 44 44 48 00 44 00 00 48 48 48 48 00 48 44 44 00 00 00 44 44 44 00 44 00 44 48 48 48 00 00 00 00 44 00 44 48 00 44 48 00 00 00 44 44 44 48 00 44 48 48 00 48 00 00 44 44 00 48 00 00 44 00 44 00 48 48 48 48 00 00 48 48 00 00 48 00 48 48 48 44 00 00 44 48 48 48 00 48 00 48 00 00 00 48 00 48 48 48 00 48 00 48 48 48 48 48 48 44 48 48 48 00 44 44 00 48 48 44 44 44 48 00 44 44 00 48 00 44 48 00 44 44 48 48 48 48 48 44 48 48 00 48 48 48 00 44 44 00 00 48 00 44 44 44 48 48 44 44 00 48 00 44 48 00 44 44 44 44 44 44 48 44 00 00 44 44 00 00 44 00 44 00 44 44 48 48 00 00 00 48 00 00 48 00 48 48 48 44 48 48 44 44 44 44 00 00 00 44 44 00 00 00 44 44 48 48 00 44 00 44 00 48 48 00 00 00 48 48 44 44 48 44 48 00 48 44 00 48 48 00 00 48 44 48 00 44 00 44 00 44 00 00 44 44 00 00 00 00 44 00 00 44 44 00 44 00 44 00 44 00 44 00 48 00 00 44 44 48 00 48 00 44 44 00 00 44 00 44 44 44 44 44 44 00 48 00 44 00 48 44 44 00 44 44 44 48 48 00 44 48 48 00 00 48 44 48 00 00 44 00 48 48 48 48 48 00 48 48 00 48 44 48 48 44 48 48 00 48 44 44 44 48 00 00 44 00 00 44 44 44 44 44 44 44 44 00 44 00 00 00 48 48 00 44 48 00 44 48 00 48 48 00 48 48 48 48 48 00 48 48 48 00 44 48 48 48 44 48 00 00 44 00 44 44 48 00 48 00 00 00 00 00 00 00 44 44 44 48 00 44 00 44 44 00 44 48 44 00 00 44 00 00 48 00 48 00 44 00 44 00 48 00 00 44 44 00 44 00 00 44 44 44 48 48 48 48 44 44 48 00 48 44 44 44 00 00 44 00 00 00 00 44 00 44 00 48 48 00 00 00 48 48 48 00 00 44 48 48 00 48 00 00 00 44 44 00 44 48 48 00 00 00 44 44 48 00 44 44 44 48 44 44 44 00 48 48 00 00 44 00 44 00 48 44 44 44 00 48 00 44 44 44 48 44 48 00 00 44 48 00 44 48 48 48 48 48 48 44 48 00 00 00 48 48 00 48 48 00 00 00 44 00 44 44 44 48 44 48 00 00 00 44 44 00 48 00 44 00 44 48 00 48 48 00 48 00 44 44 00 00 00 00 00 00 00 48 44 00 44 00 00 00 48 44 44 44 00 00 00 00 00 00 00 00 00 48 44 44 00 48 48 00 48 48 00 44 44 00 00 44 00 00 44 44 44 00 44 48 00 48 48 00 00 44 00 44 44 48 48 48 00 48 44 00 00 00 48 00 00 48 48 00 00 00 48 44 48 44 44 00 44 44 44 00 44 00 44 44 00 00 44 44 44 44 48 48 00 48 00 48 48 00 00 00 44 44 44 00 44 44 44 44 00 44 44 00 48 00 44 00 48 48 48 48 44 00 48 00 00 44 44 00 00 44 00 00 00 00 44 00 48
*/
