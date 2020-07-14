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
lea addresses_WT_ht+0x133c8, %r15
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r15)
add $44314, %r10
lea addresses_normal_ht+0xbe78, %rsi
lea addresses_normal_ht+0x19de, %rdi
nop
nop
nop
nop
nop
and $16829, %r12
mov $32, %rcx
rep movsl
nop
nop
nop
nop
add $51460, %rdi
lea addresses_WT_ht+0xdc18, %r15
nop
nop
nop
xor %rcx, %rcx
movb (%r15), %r10b
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x403d, %r10
nop
nop
nop
nop
xor %rbp, %rbp
vmovups (%r10), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
cmp $14470, %rsi
lea addresses_D_ht+0x1bac8, %rsi
lea addresses_A_ht+0xb848, %rdi
nop
nop
nop
nop
cmp $34442, %r14
mov $96, %rcx
rep movsw
nop
and $22132, %rsi
lea addresses_A_ht+0x60b4, %rcx
nop
and %r10, %r10
movl $0x61626364, (%rcx)
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x111c8, %rsi
lea addresses_WT_ht+0x4668, %rdi
nop
nop
nop
nop
nop
sub $36443, %r12
mov $84, %rcx
rep movsw
nop
cmp %r15, %r15
lea addresses_WT_ht+0x17ae8, %r15
clflush (%r15)
nop
sub $32410, %r14
mov (%r15), %rcx
nop
sub %r12, %r12
lea addresses_normal_ht+0x4412, %rsi
lea addresses_WT_ht+0xbb88, %rdi
clflush (%rsi)
nop
nop
cmp $24753, %r12
mov $63, %rcx
rep movsq
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x8bc8, %r12
nop
add $16079, %r14
movw $0x6162, (%r12)
nop
nop
nop
nop
nop
sub %rdi, %rdi
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
push %r13
push %r15
push %rcx
push %rdx

// Store
mov $0x70171100000000c2, %r11
nop
nop
nop
nop
cmp $43167, %rcx
movb $0x51, (%r11)
sub %rcx, %rcx

// Faulty Load
lea addresses_D+0x67c8, %r15
nop
nop
xor %r12, %r12
mov (%r15), %ecx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdx
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'36': 96}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
