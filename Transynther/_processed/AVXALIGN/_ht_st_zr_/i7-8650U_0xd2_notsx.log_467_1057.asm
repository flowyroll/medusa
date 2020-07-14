.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x273c, %rcx
cmp $46332, %r10
movb $0x61, (%rcx)
nop
nop
dec %rbp
lea addresses_WT_ht+0x15fbc, %rsi
lea addresses_WT_ht+0xf53c, %rdi
dec %r15
mov $76, %rcx
rep movsl
nop
add $2854, %r15
lea addresses_D_ht+0x1c994, %rdi
and %r11, %r11
movb (%rdi), %cl
nop
nop
nop
nop
nop
dec %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r9
push %rbx
push %rdi
push %rdx

// Store
lea addresses_A+0x9174, %rdi
nop
cmp $39835, %r15
movl $0x51525354, (%rdi)
nop
and $35729, %r15

// Load
mov $0x619f1000000002bc, %rdx
inc %r9
vmovups (%rdx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
dec %rdx

// Store
mov $0x1bc, %r11
nop
nop
nop
add $64452, %rdx
movw $0x5152, (%r11)
nop
sub %rbx, %rbx

// Faulty Load
lea addresses_US+0x12dbc, %r11
nop
nop
nop
nop
and %rdi, %rdi
vmovntdqa (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 330, '49': 136, '32': 1}
00 00 49 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 00 49 49 00 00 49 49 49 49 49 00 49 49 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 49 00 00 49 00 00 00 00 49 00 00 49 49 49 00 00 49 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 49 00 49 49 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 49 00 49 00 49 00 49 00 49 49 00 00 49 00 00 00 00 00 49 00 00 00 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 49 49 49 00 49 49 00 00 00 49 00 00 00 49 49 49 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 49 49 49 00 00 49 00 49 49 00 00 00 00 49 00 00 49 00 49 00 00 00 49 49 49 49 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 49 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 00 00 49 00 00 00 00 49 49 00 00 00 00 00 49 49 00 00 00 00 00 00 49 49 49 00 00 00 00 00 49 49 00 00 00 00 49 00 49 00 49 00 49 00 49 00 49 49 49 00 49 00 00 00 00 00 00 00 49 00 49 49 49 00 00 49 49 00 49 00 00 49 00 00 00 00 00 00 00 49 49 00 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 49 49 49 49 00 00 00 00 32 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 49 00 00 49 00
*/
