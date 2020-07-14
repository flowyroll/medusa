.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x13334, %rsi
lea addresses_UC_ht+0x1a334, %rdi
nop
nop
nop
nop
inc %r15
mov $122, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r13, %r13
lea addresses_D_ht+0x1c474, %rsi
lea addresses_UC_ht+0x71fc, %rdi
nop
nop
nop
cmp $25852, %r15
mov $49, %rcx
rep movsl
nop
nop
nop
and $65109, %r13
lea addresses_UC_ht+0x8f34, %rsi
lea addresses_WT_ht+0x16b34, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %rdx
mov $53, %rcx
rep movsl
xor %rdi, %rdi
lea addresses_WC_ht+0xbf10, %rcx
nop
nop
cmp %r14, %r14
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
movups %xmm1, (%rcx)
nop
nop
nop
add $48370, %rsi
lea addresses_normal_ht+0x7734, %rdx
nop
nop
dec %rcx
movups (%rdx), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
inc %rcx
lea addresses_WT_ht+0xc5b4, %rcx
nop
nop
nop
nop
inc %r13
movl $0x61626364, (%rcx)
nop
nop
nop
and $24840, %rsi
lea addresses_A_ht+0xb4f4, %rdx
nop
nop
nop
nop
nop
add $56157, %r15
movups (%rdx), %xmm1
vpextrq $1, %xmm1, %rcx
cmp %r14, %r14
lea addresses_A_ht+0xd6a4, %r13
nop
nop
sub %rdi, %rdi
movb $0x61, (%r13)
nop
nop
nop
nop
add $36290, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rcx

// Faulty Load
mov $0x48f59e0000000f34, %r10
nop
nop
nop
sub $52187, %r15
mov (%r10), %r13w
lea oracles, %r11
and $0xff, %r13
shlq $12, %r13
mov (%r11,%r13,1), %r13
pop %rcx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'00': 216}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
