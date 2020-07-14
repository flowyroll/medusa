.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1abb5, %r10
nop
nop
nop
nop
nop
cmp $46788, %r14
mov (%r10), %rbp
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_D_ht+0x6565, %rsi
lea addresses_WC_ht+0x2e5, %rdi
nop
nop
nop
nop
inc %r15
mov $114, %rcx
rep movsl
nop
nop
nop
and %rbp, %rbp
lea addresses_WC_ht+0x7b65, %r10
nop
nop
cmp %r15, %r15
movw $0x6162, (%r10)
nop
sub %r15, %r15
lea addresses_WT_ht+0x965, %rsi
lea addresses_UC_ht+0x11e85, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $45, %rcx
rep movsw
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x1b565, %r14
nop
nop
nop
cmp %r15, %r15
vmovups (%r14), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rcx
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x18b01, %rdi
sub %r10, %r10
movb (%rdi), %r15b
nop
nop
cmp %rsi, %rsi
lea addresses_UC_ht+0x195e5, %r10
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%r10)
nop
nop
nop
and $23998, %rbp
lea addresses_D_ht+0x3865, %rsi
lea addresses_A_ht+0x7ca5, %rdi
nop
nop
nop
nop
nop
and $6107, %r10
mov $7, %rcx
rep movsb
nop
nop
nop
nop
nop
and $14729, %r10
lea addresses_WT_ht+0x6165, %rsi
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_WT_ht+0x16745, %rsi
lea addresses_normal_ht+0xcd01, %rdi
nop
nop
nop
nop
nop
sub $50554, %rbx
mov $64, %rcx
rep movsw
nop
nop
nop
nop
nop
dec %r10
lea addresses_D_ht+0x1e7e5, %rsi
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm5
movups %xmm5, (%rsi)
nop
nop
sub %r10, %r10
lea addresses_A_ht+0x1936d, %rbx
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, (%rbx)
nop
nop
nop
sub $6391, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rbx
push %rcx

// Store
lea addresses_D+0x18a65, %rcx
nop
nop
nop
nop
sub %rbp, %rbp
mov $0x5152535455565758, %r14
movq %r14, %xmm2
movups %xmm2, (%rcx)

// Exception!!!
nop
nop
mov (0), %r11
nop
nop
xor $26448, %rbp

// Store
mov $0x26007d0000000e65, %r14
add $10573, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%r14)
nop
nop
nop
nop
dec %r14

// Store
lea addresses_RW+0x7e35, %rbp
nop
nop
nop
nop
xor %r15, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%rbp)
nop
inc %r15

// Store
mov $0xce5, %r11
nop
sub $33988, %rax
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
sub %r14, %r14

// Faulty Load
lea addresses_US+0x14165, %rax
nop
nop
nop
nop
nop
and %r15, %r15
movups (%rax), %xmm4
vpextrq $0, %xmm4, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
