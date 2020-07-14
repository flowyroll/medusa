.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1c024, %rsi
lea addresses_WC_ht+0x1924, %rdi
nop
nop
cmp %rax, %rax
mov $111, %rcx
rep movsw
xor $19339, %r12
lea addresses_D_ht+0x11204, %rsi
add $10376, %r9
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
and $28424, %r12
lea addresses_A_ht+0x4c24, %rsi
clflush (%rsi)
xor %rdx, %rdx
mov (%rsi), %di
nop
nop
nop
and $33262, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_RW+0x17224, %rsi
lea addresses_PSE+0x144a4, %rdi
add $38920, %r9
mov $84, %rcx
rep movsb
nop
nop
and %rdi, %rdi

// Store
lea addresses_WC+0xde24, %rsi
nop
nop
nop
nop
nop
and $23152, %r9
movb $0x51, (%rsi)
nop
nop
nop
nop
xor %rsi, %rsi

// Store
mov $0xc24, %rcx
nop
xor %rax, %rax
movb $0x51, (%rcx)
nop
nop
nop
nop
nop
and $28375, %rsi

// Store
lea addresses_WT+0x1d914, %rax
nop
nop
cmp $45702, %r11
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%rax)

// Exception!!!
nop
nop
mov (0), %rsi
nop
nop
inc %r9

// Store
lea addresses_UC+0x1a7d4, %rcx
nop
sub %rax, %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%rcx)
dec %r9

// Store
mov $0x521bce0000000e32, %r9
cmp %rcx, %rcx
movl $0x51525354, (%r9)
nop
nop
nop
cmp $35823, %r11

// Load
lea addresses_WC+0x125f4, %r9
nop
sub %rdi, %rdi
mov (%r9), %rax
nop
nop
nop
nop
sub $64574, %rdi

// Faulty Load
lea addresses_D+0x1f424, %rsi
nop
nop
nop
inc %r11
vmovups (%rsi), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rbp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 9, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': True, 'congruent': 4, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'36': 2}
36 36
*/
