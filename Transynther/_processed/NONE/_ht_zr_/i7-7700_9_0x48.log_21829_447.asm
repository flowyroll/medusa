.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x18c38, %rsi
lea addresses_D_ht+0x1e1f8, %rdi
nop
add $60780, %rdx
mov $80, %rcx
rep movsw
nop
nop
nop
nop
nop
and $15990, %rbx
lea addresses_WC_ht+0x13d9e, %rax
nop
sub $58439, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%rax)
nop
nop
nop
nop
nop
inc %rbx
lea addresses_A_ht+0xf2d8, %rsi
lea addresses_WC_ht+0x1f54, %rdi
nop
nop
nop
add %r10, %r10
mov $33, %rcx
rep movsw
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x18038, %rsi
lea addresses_WC_ht+0x5278, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub $15216, %r11
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
and $15167, %rbx
lea addresses_UC_ht+0x1b838, %rsi
lea addresses_D_ht+0x1a038, %rdi
and %r10, %r10
mov $80, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x1bc38, %rcx
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%rcx), %r11w
nop
sub $12909, %rax
lea addresses_UC_ht+0x150b8, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
sub $17824, %rdx
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %r10
nop
xor %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbp
push %rbx

// Load
lea addresses_UC+0xe258, %r11
nop
nop
nop
inc %rbp
movb (%r11), %al
sub %rbp, %rbp

// Faulty Load
lea addresses_UC+0x1e838, %rax
nop
nop
nop
cmp %rbx, %rbx
movups (%rax), %xmm6
vpextrq $1, %xmm6, %r10
lea oracles, %rbx
and $0xff, %r10
shlq $12, %r10
mov (%rbx,%r10,1), %r10
pop %rbx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 1, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'67': 1, '47': 4, '48': 7742, '45': 1166, '00': 12916}
00 48 00 48 00 48 00 48 00 48 00 48 00 45 48 00 00 00 00 00 00 48 00 48 00 00 48 00 48 00 48 00 00 00 48 00 48 00 00 48 00 48 00 00 00 00 00 00 00 00 00 48 00 48 00 48 00 00 48 00 48 48 00 48 00 48 00 00 48 00 48 00 00 00 45 00 00 00 00 00 48 00 48 00 48 48 48 00 48 48 00 48 00 00 48 48 00 48 00 00 48 00 48 00 00 00 00 48 48 00 48 00 00 48 00 00 48 00 48 00 00 48 00 48 00 00 48 00 00 00 00 00 48 00 48 00 48 00 48 48 00 48 00 48 00 00 48 45 48 00 00 00 00 00 48 00 48 00 48 00 00 48 00 48 48 00 48 00 48 00 00 48 00 48 00 00 48 45 48 00 00 00 00 48 00 00 00 00 00 00 48 00 48 00 00 00 48 00 48 45 48 00 48 00 48 00 00 00 00 48 00 48 48 45 48 00 48 00 48 48 48 00 48 00 45 48 00 48 00 00 48 45 00 00 00 00 00 00 45 00 00 48 00 48 48 45 48 00 48 00 48 48 45 48 00 00 48 00 48 00 48 00 48 45 48 00 48 00 48 00 00 00 48 00 48 00 00 48 00 00 48 00 48 48 00 48 00 48 00 48 48 00 48 00 00 00 00 00 00 00 00 48 00 48 00 45 48 00 48 00 48 00 45 48 48 00 48 48 00 48 00 48 00 48 48 00 48 00 48 48 00 48 00 48 00 00 48 48 00 48 00 48 48 00 48 00 48 48 45 48 00 00 00 00 48 45 48 00 48 00 48 00 48 48 45 48 00 00 00 00 48 45 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 48 00 48 00 00 48 00 48 00 48 48 45 48 00 00 00 00 00 45 00 00 00 00 48 00 00 48 00 48 00 48 48 45 48 00 48 00 48 48 00 48 00 00 00 00 48 00 00 00 48 00 48 48 00 48 00 48 00 00 48 00 00 00 00 00 45 00 00 00 00 48 45 48 00 48 00 48 00 48 00 48 48 45 48 00 48 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 48 00 48 00 48 00 00 48 00 00 48 00 00 00 00 00 48 00 48 00 48 00 48 48 45 48 00 48 00 48 48 45 48 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 48 00 48 00 48 48 48 00 48 00 45 48 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 00 48 48 00 48 00 48 00 48 00 45 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 48 00 48 00 00 48 48 00 48 00 00 48 00 48 00 48 00 45 48 00 48 00 00 48 45 00 00 00 00 00 00 45 00 00 48 00 48 00 00 48 00 48 00 48 00 48 00 48 00 00 00 00 45 00 00 00 00 00 00 00 00 00 48 00 48 48 45 48 00 48 00 48 48 45 48 00 48 00 00 48 45 00 00 00 00 00 00 45 00 00 48 00 48 00 00 48 00 48 00 48 00 48 00 45 48 00 48 00 00 48 45 00 00 00 00 48 00 00 00 00 48 00 48 48 00 48 00 48 00 00 48 00 00 48 00 00 00 00 48 00 48 00 48 48 45 48 00 48 00 00 48 00 48 00 48 00 48 00 00 48 00 48 00 48 00 00 48 00 00 00 00 00 48 00 00 48 00 48 00 00 48 00 48 00 48 00 00 00 00 48 00 00 00 00 48 00 48 48 45 48 00 48 00 48 00 48 00 48 00 48 48 00 00 00 00 48 45 00 00 00 00 48 48 00 00 00 00 00 45 00 00 00 00 48 00 00 00 00 48 00 48 00 45 48 00 48 00 48 48 45 48 00 48 00 48 00 45 48 00 00 00 00 00 45 00 00 00 00 48 00 00 48 00 48 00 48 00 00 48 00 48 00 48 00 48 48 00 00 00 00 00 48 00 00 00 00 48 00 48 00 00 48 00 48 00 48 00 00 48 00 48 00 48 48 45 48 00 48 00 48 48 00 48 00 48 00 00 48 00 00 00 00 00 48 00 00 00 00 48 00 48 00 45 48 00 48 00 48 45 48 00 48 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 48 48 00 48 00 48 00 48 48 45 48 00 00 00 48 00 45 48 00 48 00 48 48 00 48 00 48 45 48 00 48 00 48 00 48
*/
