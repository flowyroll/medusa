.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x10c6b, %rsi
lea addresses_D_ht+0x103e1, %rdi
clflush (%rsi)
and %r13, %r13
mov $10, %rcx
rep movsl
nop
nop
nop
nop
nop
add $48409, %r10
lea addresses_WC_ht+0x11fe1, %rsi
lea addresses_normal_ht+0x13ac9, %rdi
clflush (%rdi)
nop
sub %r10, %r10
mov $78, %rcx
rep movsl
nop
nop
xor $22109, %rcx
lea addresses_A_ht+0xba41, %rsi
lea addresses_D_ht+0x17bb7, %rdi
nop
nop
nop
add %r15, %r15
mov $28, %rcx
rep movsw
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x2ae1, %rsi
sub %r11, %r11
movw $0x6162, (%rsi)
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0x1e828, %r11
nop
sub $17837, %rcx
and $0xffffffffffffffc0, %r11
movntdqa (%r11), %xmm2
vpextrq $1, %xmm2, %r10
nop
nop
nop
dec %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_A+0xd3e1, %rsi
lea addresses_D+0x165e1, %rdi
nop
nop
nop
nop
and $55970, %rdx
mov $120, %rcx
rep movsw
nop
nop
cmp $6023, %rcx

// Store
lea addresses_WT+0x1dbe1, %r11
nop
nop
nop
inc %rcx
movb $0x51, (%r11)
nop
nop
nop
nop
sub %rsi, %rsi

// Faulty Load
lea addresses_WT+0x1dbe1, %r10
nop
nop
nop
cmp $24073, %rdx
vmovaps (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'00': 114}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
