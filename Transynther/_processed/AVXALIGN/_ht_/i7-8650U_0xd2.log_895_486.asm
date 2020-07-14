.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x142fb, %rsi
lea addresses_normal_ht+0x1ddcb, %rdi
nop
nop
nop
nop
and $48919, %rbp
mov $88, %rcx
rep movsl
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WT_ht+0x4ffb, %rcx
nop
nop
xor %r9, %r9
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x1c3fb, %r9
nop
nop
nop
dec %r11
mov (%r9), %ecx
add $53264, %r9
lea addresses_normal_ht+0x1d843, %rdi
nop
nop
nop
nop
nop
dec %r9
movups (%rdi), %xmm6
vpextrq $0, %xmm6, %rcx
nop
add %rdx, %rdx
lea addresses_D_ht+0x43fb, %r9
clflush (%r9)
nop
xor $17354, %rcx
movb (%r9), %r11b
cmp %r9, %r9
lea addresses_D_ht+0x5f03, %r11
nop
nop
cmp $34159, %rdi
mov (%r11), %rsi
nop
nop
nop
add %r9, %r9
lea addresses_A_ht+0x110db, %rsi
lea addresses_WC_ht+0x105fb, %rdi
nop
nop
nop
nop
inc %rdx
mov $96, %rcx
rep movsb
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_normal_ht+0x44fb, %rdx
nop
xor $1160, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%rdx)
nop
inc %r11
lea addresses_WT_ht+0x1c72b, %rsi
lea addresses_D_ht+0x159fb, %rdi
nop
nop
nop
nop
dec %rbp
mov $75, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rax
push %rdx
push %rsi

// Faulty Load
lea addresses_WC+0xa9fb, %r15
nop
sub %r8, %r8
vmovaps (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
lea oracles, %rsi
and $0xff, %r13
shlq $12, %r13
mov (%rsi,%r13,1), %r13
pop %rsi
pop %rdx
pop %rax
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'49': 279, '45': 616}
49 45 45 45 49 49 49 45 45 45 49 45 45 45 45 45 49 45 45 45 45 45 45 49 49 45 49 49 49 49 45 49 49 49 49 45 45 45 49 45 49 49 45 49 45 49 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 49 49 45 45 49 45 45 45 45 45 49 49 45 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 45 45 45 45 45 49 49 49 45 45 49 45 45 45 45 49 45 49 49 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 49 45 45 45 49 45 45 45 49 49 45 49 45 45 45 45 49 49 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 49 45 49 45 49 45 49 45 49 45 45 45 49 45 45 45 45 49 45 49 49 45 49 45 45 45 49 45 49 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 49 49 45 45 45 45 45 45 49 49 45 49 45 45 49 45 49 45 45 49 45 45 45 49 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 49 49 45 45 49 49 49 45 49 45 45 45 45 45 49 45 49 45 49 49 45 49 45 45 45 49 45 49 45 49 49 45 45 45 45 45 49 45 49 45 49 49 45 49 45 49 45 45 45 49 49 45 45 49 49 45 49 45 45 45 45 45 45 45 45 45 45 49 49 49 49 45 45 45 49 49 45 45 45 45 49 49 49 45 45 49 45 45 45 49 45 49 45 45 45 45 45 45 49 45 45 45 49 45 45 49 45 45 49 45 49 45 45 45 45 45 49 45 45 49 45 45 45 49 49 45 45 45 45 45 49 45 49 45 45 45 45 49 45 45 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 49 49 45 45 49 49 45 45 45 45 45 45 45 49 49 45 49 45 45 45 45 45 45 45 49 45 49 49 45 49 45 45 45 49 45 45 45 45 45 49 45 49 49 49 45 45 45 45 49 45 45 45 45 45 49 49 49 45 45 45 45 45 49 45 49 49 45 45 45 49 45 45 49 45 45 49 45 49 49 45 49 45 45 49 49 45 49 45 45 45 45 45 45 45 45 45 45 49 49 45 45 45 49 49 49 45 45 45 45 45 45 45 45 45 49 49 49 49 49 45 45 45 45 45 49 45 45 45 49 45 45 49 45 45 45 45 45 45 45 45 49 49 49 45 45 45 45 45 45 45 45 49 45 45 45 49 45 49 49 45 45 45 45 45 45 45 45 45 49 49 49 49 49 49 49 45 45 45 49 45 45 49 45 45 45 49 45 45 45 49 45 45 45 49 45 49 45 49 45 45 45 45 49 45 45 45 45 45 49 49 49 49 45 49 45 49 45 49 45 45 45 45 45 45 49 45 45 45 45 49 45 49 49 49 45 45 45 45 45 49 49 45 45 45 45 45 49 45 49 45 45 45 49 49 49 45 49 49 45 49 45 49 45 49 45 45 49 49 45 45 45 45 45 49 45 45 45 49 45 45 45 45 49 45 45 49 45 49 45 45 45 45 45 45 45 45 45 49 45 49 49 45 45 45 45 45 45 49 45 49 45 45 49 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 45 45 49 49 45 45 49 45 49 45 49 45 45 45 45 45 49 45 49 45 45 49 49 49 49 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 49 45 45 49 45 45 45 45 45 49 49 45 45 49 45 45 49 49 45 49 49 45 45 49 45 49 49 49 45 45 45 45 49 45 45 45 49 45 45 45 45 45 45 45 45 45 45 45 45 49 45 49 45 45 45 49 49 49 45 45 49 49 45 45 45 45 49 49 45 45 45 45 49 45 45 49 49 45 45 45 49 45 45
*/
