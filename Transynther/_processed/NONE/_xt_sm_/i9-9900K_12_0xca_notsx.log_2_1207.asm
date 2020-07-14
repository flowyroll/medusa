.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x16d50, %rcx
nop
nop
nop
sub $44842, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
sub %r11, %r11
lea addresses_D_ht+0x1afd0, %r8
nop
nop
nop
add %rdi, %rdi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
vmovups %ymm4, (%r8)
nop
nop
xor $3619, %r14
lea addresses_UC_ht+0x611e, %rsi
lea addresses_WT_ht+0x13528, %rdi
nop
nop
nop
nop
xor $26132, %rdx
mov $64, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rcx
lea addresses_WT_ht+0x2dd0, %r14
nop
nop
nop
nop
inc %rdx
mov (%r14), %rbx
cmp %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x19950, %r15
nop
nop
and $17052, %rdi
movw $0x5152, (%r15)
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_D+0xc5d0, %r8
nop
nop
and $56725, %r9
movb $0x51, (%r8)
nop
nop
nop
sub %rsi, %rsi

// Store
lea addresses_RW+0xbdd0, %r9
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r8
movq %r8, %xmm4
vmovups %ymm4, (%r9)
nop
nop
cmp $4649, %r15

// Store
lea addresses_WC+0x1cfd0, %r15
nop
nop
nop
nop
nop
inc %rsi
movw $0x5152, (%r15)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rcx
nop
cmp $16579, %r8

// Store
lea addresses_RW+0x1e668, %rsi
nop
nop
nop
nop
nop
dec %r9
movw $0x5152, (%rsi)
nop
nop
nop
nop
xor %rcx, %rcx

// Store
lea addresses_UC+0x19ab4, %rsi
nop
nop
nop
dec %r13
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movntdq %xmm5, (%rsi)
nop
nop
nop
xor $61574, %rcx

// Store
mov $0x3d0, %r15
nop
add %r9, %r9
movw $0x5152, (%r15)
nop
nop
nop
and $6151, %rcx

// Faulty Load
lea addresses_RW+0xbdd0, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp $31410, %rsi
mov (%rcx), %r8w
lea oracles, %rsi
and $0xff, %r8
shlq $12, %r8
mov (%rsi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'58': 2}
58 58
*/
