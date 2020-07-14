.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r8
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x194e5, %rsi
lea addresses_UC_ht+0x1663d, %rdi
clflush (%rsi)
nop
nop
nop
dec %r8
mov $52, %rcx
rep movsw
nop
sub $24443, %rcx
lea addresses_WC_ht+0x86b5, %r14
nop
nop
cmp %r13, %r13
movw $0x6162, (%r14)
nop
sub %rdi, %rdi
lea addresses_WT_ht+0x6ca5, %rsi
lea addresses_normal_ht+0x18ca5, %rdi
nop
nop
nop
nop
nop
inc %r9
mov $29, %rcx
rep movsw
xor $10448, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %rbp
push %rbx
push %rcx
push %rdi

// Load
lea addresses_A+0x62a5, %rcx
nop
nop
nop
nop
nop
xor $43112, %rbx
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdi
dec %rcx

// Store
lea addresses_A+0x182a5, %r11
nop
nop
nop
nop
sub $27100, %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm3
movaps %xmm3, (%r11)

// Exception!!!
mov (0), %r11
sub %rcx, %rcx

// Store
lea addresses_D+0xd845, %rdi
clflush (%rdi)
nop
and $11048, %r15
movw $0x5152, (%rdi)
nop
nop
cmp %r10, %r10

// Store
lea addresses_UC+0xcb9d, %rbx
nop
dec %r15
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movntdq %xmm4, (%rbx)
nop
add $11532, %rcx

// Store
lea addresses_D+0x2ea5, %r10
clflush (%r10)
nop
cmp %r11, %r11
mov $0x5152535455565758, %rdi
movq %rdi, (%r10)
nop
inc %r15

// Faulty Load
lea addresses_A+0x62a5, %rbp
nop
nop
add $26689, %rdi
vmovups (%rbp), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_A', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_D_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': True, 'type': 'addresses_WC_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'e8': 4, '00': 10, '46': 31}
00 46 46 00 46 46 46 46 00 46 46 46 00 46 46 00 46 00 46 00 46 e8 46 46 46 46 e8 e8 46 46 00 46 00 46 46 46 46 46 46 e8 46 46 00 46 46
*/
