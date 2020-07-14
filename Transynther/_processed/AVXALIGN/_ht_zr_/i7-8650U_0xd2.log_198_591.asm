.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x111a6, %rsi
clflush (%rsi)
nop
nop
dec %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm5
vmovups %ymm5, (%rsi)
cmp %r8, %r8
lea addresses_WT_ht+0xbd26, %r11
nop
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%r11)
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x112be, %r14
nop
cmp $65136, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_D_ht+0x2cf6, %rsi
lea addresses_UC_ht+0x109a6, %rdi
nop
nop
add %r15, %r15
mov $12, %rcx
rep movsq
nop
xor $5689, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r9
push %rax
push %rbp
push %rbx
push %rdi

// Store
lea addresses_D+0x156a6, %r13
nop
nop
nop
nop
sub $23403, %rdi
mov $0x5152535455565758, %rax
movq %rax, (%r13)

// Exception!!!
nop
nop
mov (0), %rax
nop
nop
nop
nop
nop
cmp $13453, %r15

// Load
mov $0x166, %rdi
nop
nop
xor %r9, %r9
mov (%rdi), %r13w
nop
nop
nop
nop
nop
add $32668, %rdi

// Store
lea addresses_A+0x14616, %r9
nop
nop
nop
nop
nop
inc %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r9)
nop
nop
nop
nop
cmp $48672, %r13

// Faulty Load
lea addresses_UC+0x55a6, %r15
nop
nop
nop
nop
nop
cmp $19915, %rbp
vmovntdqa (%r15), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r9
lea oracles, %r15
and $0xff, %r9
shlq $12, %r9
mov (%r15,%r9,1), %r9
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': True, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_P', 'size': 2, 'AVXalign': True, 'NT': True, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'46': 168, '00': 30}
46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 00 46 46 00 46 00 46 46 46 46 46 46 46 46 00 00 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 00 46 46 00 46 46 46 46 46 00 46 46 00 46 00 46 00 00 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 00 46 00 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46
*/
