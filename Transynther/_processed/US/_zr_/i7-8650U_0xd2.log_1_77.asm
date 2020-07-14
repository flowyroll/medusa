.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1d55c, %rsi
lea addresses_A_ht+0x178c, %rdi
nop
nop
inc %r10
mov $117, %rcx
rep movsq
nop
nop
inc %r11
lea addresses_A_ht+0x4c2f, %r14
nop
xor $59296, %r13
mov (%r14), %r10w
nop
nop
nop
nop
cmp $28074, %rdi
lea addresses_D_ht+0x705c, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
cmp $22510, %r14
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
nop
inc %rsi
lea addresses_normal_ht+0x128dc, %rcx
inc %rsi
mov (%rcx), %r10d
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x14b8c, %r14
nop
nop
nop
and $22457, %r11
movw $0x6162, (%r14)
nop
nop
xor $23661, %r10
lea addresses_WC_ht+0x1409c, %rsi
lea addresses_D_ht+0x17d5c, %rdi
nop
nop
nop
dec %r8
mov $2, %rcx
rep movsq
nop
nop
cmp %rdi, %rdi
lea addresses_A_ht+0x915c, %rdi
nop
nop
nop
nop
cmp $13680, %r11
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %r13
add $16743, %r10
lea addresses_WC_ht+0x166b3, %rsi
lea addresses_A_ht+0xc15c, %rdi
nop
nop
nop
inc %r11
mov $103, %rcx
rep movsl
nop
inc %r10
lea addresses_D_ht+0x1cb2c, %rsi
nop
nop
inc %r10
movups (%rsi), %xmm7
vpextrq $1, %xmm7, %r11
nop
nop
sub %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_UC+0x1d5c, %rsi
lea addresses_PSE+0x1795c, %rdi
nop
nop
nop
nop
nop
xor $28275, %r9
mov $81, %rcx
rep movsl
nop
nop
nop
sub $7661, %rdx

// Faulty Load
lea addresses_US+0x155c, %r9
nop
nop
nop
add $50546, %rcx
mov (%r9), %esi
lea oracles, %r9
and $0xff, %rsi
shlq $12, %rsi
mov (%r9,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_PSE', 'congruent': 9, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 1}
00
*/
