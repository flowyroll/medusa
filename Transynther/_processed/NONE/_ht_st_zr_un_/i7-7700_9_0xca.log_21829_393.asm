.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xedf9, %rsi
lea addresses_A_ht+0x1bab9, %rdi
nop
xor $8926, %rdx
mov $70, %rcx
rep movsq
nop
add %r13, %r13
lea addresses_WT_ht+0x1b2b9, %r14
nop
nop
nop
nop
cmp $25080, %r10
movb $0x61, (%r14)
nop
dec %rcx
lea addresses_WC_ht+0x15091, %rsi
lea addresses_WC_ht+0x1eab9, %rdi
dec %rdx
mov $119, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xf05f, %r13
nop
nop
nop
sub %r10, %r10
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %r13
movntdq %xmm1, (%r13)
nop
nop
nop
nop
nop
inc %r13
lea addresses_D_ht+0xfcf1, %rsi
lea addresses_WC_ht+0x1ef39, %rdi
nop
nop
nop
inc %r8
mov $31, %rcx
rep movsl
xor %r13, %r13
lea addresses_WC_ht+0x17e79, %rcx
clflush (%rcx)
nop
nop
sub %r13, %r13
movw $0x6162, (%rcx)
nop
nop
nop
nop
xor $55031, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rcx
push %rdx
push %rsi

// Faulty Load
lea addresses_WT+0x142b9, %rcx
nop
nop
nop
add %r11, %r11
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rcx
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 1, 'NT': True, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WC_ht'}}
{'46': 812, '48': 3277, '6b': 2, '00': 5102, '53': 1569, 'de': 20, '20': 2, 'b0': 542, 'c0': 2, '79': 237, 'ff': 10060, '80': 6, 'aa': 4, '3c': 28, '01': 116, 'e0': 2, '90': 48}
00 48 48 48 48 ff ff ff ff b0 00 ff 00 ff ff ff 01 ff 01 48 ff ff 01 48 00 ff ff ff 46 ff 48 00 ff 48 ff ff ff 01 ff ff 00 ff 00 ff ff 00 ff ff 90 ff ff 00 00 46 53 53 00 ff 00 00 00 ff 53 ff ff 48 46 53 ff 48 00 ff ff ff ff 46 48 00 48 53 ff ff ff 48 ff 48 ff ff 00 48 ff ff 00 ff ff ff 79 ff ff ff ff b0 ff 46 ff ff 48 53 53 ff ff b0 ff ff b0 ff 48 00 ff 01 ff 00 ff 01 ff 48 ff 48 ff ff ff ff 48 48 ff ff ff 00 48 00 48 ff ff 00 00 00 00 46 00 00 00 ff 00 ff ff ff 00 ff 48 53 ff 48 ff ff 46 48 53 53 48 ff 48 48 00 ff ff ff 48 48 00 48 ff 48 ff 48 53 53 ff 48 53 48 ff 48 48 53 ff ff 00 ff ff ff 48 00 53 ff b0 48 53 00 00 aa ff ff 00 48 53 ff ff ff ff 79 ff ff 00 48 00 ff 48 53 00 ff 48 48 48 00 00 ff 00 00 53 ff ff ff 48 53 ff ff 48 ff ff ff 48 48 00 00 48 00 ff ff b0 ff 53 ff ff ff ff 00 ff 00 ff ff 00 ff ff ff 00 00 48 ff ff b0 ff ff 48 53 00 ff ff 00 ff 00 ff 00 00 ff 00 ff ff ff ff 01 ff ff 00 48 53 ff ff 00 ff 00 ff ff ff ff 00 ff ff ff 48 00 ff ff b0 46 53 00 48 48 53 ff ff 46 48 00 ff 48 ff ff ff ff ff 00 ff 00 ff 00 ff 46 ff ff ff 01 ff ff ff ff ff 90 48 ff ff ff 00 ff ff 48 ff ff ff 48 46 53 ff ff b0 48 00 00 ff 48 ff 48 00 ff ff ff ff 00 00 79 ff 48 53 ff 48 00 ff 00 ff ff 00 53 ff 00 46 00 53 ff 00 ff 48 00 53 00 ff 00 00 ff ff 00 ff 00 ff 79 00 ff ff 00 00 00 ff 48 53 ff 48 ff 46 00 ff 48 00 ff 48 48 53 ff ff 00 ff 00 ff 00 00 ff ff 00 00 ff 46 ff ff 00 ff ff b0 ff ff 46 53 ff ff 48 ff ff 48 00 ff 00 ff 00 ff ff 00 00 48 ff 46 ff b0 53 48 ff ff 48 48 48 ff ff 00 00 ff 00 ff ff 00 ff 00 ff ff ff 00 48 53 ff 00 ff 00 ff ff ff ff ff ff ff ff ff 48 00 ff 48 ff 46 ff ff ff 00 00 00 ff ff 48 53 ff ff ff 48 ff ff ff 00 ff 48 00 53 48 48 ff 00 48 53 48 53 53 ff ff ff 48 53 00 46 ff 00 00 48 53 46 00 ff ff ff ff ff b0 48 53 00 ff ff 48 ff ff 53 53 ff 00 00 ff 48 ff 48 00 ff ff 46 ff 00 e0 ff ff ff 00 48 00 ff ff ff b0 ff ff 00 ff 00 ff 46 48 ff ff 48 00 00 ff ff ff 00 ff ff 48 ff 00 ff 79 00 00 00 00 ff ff ff 53 00 00 ff 46 00 ff ff 00 ff ff 79 ff 48 48 ff ff ff ff ff ff ff ff b0 53 53 00 ff 00 ff 00 ff 46 48 ff 00 ff ff b0 53 53 53 00 48 ff 00 ff ff 48 ff 48 00 ff 00 ff 48 48 ff 00 ff 53 48 ff 00 ff ff ff 00 ff 00 00 ff b0 ff ff 79 46 00 48 00 ff 00 48 ff ff 48 ff 48 ff ff ff 46 00 00 ff ff 46 53 ff 00 ff ff ff 00 ff 00 ff ff 01 ff ff ff 00 ff 00 ff ff ff ff 90 48 48 ff 01 00 ff ff ff 48 00 ff 48 ff b0 00 ff ff 00 00 46 48 ff 79 ff ff ff 48 ff ff 48 ff 48 46 53 48 46 ff 00 ff 46 00 ff 00 ff 00 53 53 00 00 00 48 48 ff ff 53 00 ff 46 ff 46 53 00 00 ff 48 48 53 ff ff 00 ff b0 ff ff 00 00 ff 48 00 48 ff 00 48 ff ff 00 48 53 ff ff ff ff ff 46 ff ff 48 00 00 00 ff b0 53 00 ff 00 ff 53 ff 48 00 00 ff 48 48 53 00 48 53 00 00 ff 00 48 ff ff ff 00 ff ff 48 ff 00 48 ff ff 46 53 48 53 ff 53 46 ff 00 ff ff 00 ff ff 00 ff 00 ff ff ff 48 48 53 53 00 48 ff 53 48 48 53 ff ff 79 ff 48 ff ff ff 00 ff 00 00 48 ff 46 46 ff ff ff ff ff 00 ff ff b0 ff 53 00 ff ff 90 48 ff 00 48 53 ff ff 48 46 53 53 00 ff 53 ff ff ff ff ff ff ff ff ff ff ff 46 ff 48 00 ff 48 ff 48 53
*/
