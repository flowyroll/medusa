.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x11d57, %r9
nop
sub %rdi, %rdi
movb (%r9), %r11b
nop
xor $42851, %r11
lea addresses_WC_ht+0x1ba45, %rax
nop
nop
nop
nop
add %rcx, %rcx
mov (%rax), %r13w
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WC_ht+0x15445, %r13
nop
nop
nop
nop
nop
xor $54918, %rsi
movb (%r13), %r9b
nop
nop
sub %r13, %r13
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_normal+0x16f45, %r15
nop
sub %rsi, %rsi
movw $0x5152, (%r15)
nop
cmp $40503, %rdx

// Load
lea addresses_D+0x17045, %rsi
clflush (%rsi)
nop
nop
nop
nop
and %r8, %r8
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
and $32793, %r15

// Store
lea addresses_RW+0x11ab3, %r15
xor $54003, %rax
movl $0x51525354, (%r15)
add %r8, %r8

// Load
lea addresses_D+0x1f245, %rdx
nop
nop
nop
nop
nop
inc %rdi
mov (%rdx), %r8d
nop
and $31211, %rdi

// Store
lea addresses_WT+0x7c, %rsi
nop
nop
nop
cmp $40344, %rdi
movl $0x51525354, (%rsi)
nop
nop
nop
nop
xor %rsi, %rsi

// Faulty Load
mov $0x58546c0000000445, %rdi
nop
nop
dec %rax
movb (%rdi), %cl
lea oracles, %r15
and $0xff, %rcx
shlq $12, %rcx
mov (%r15,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': True, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 10, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 8, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 1, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'00': 14}
00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
