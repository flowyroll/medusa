.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1de2a, %r13
clflush (%r13)
nop
nop
nop
add $5553, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r13)
nop
dec %rcx
lea addresses_WC_ht+0x6a6a, %rsi
lea addresses_WT_ht+0x12c4a, %rdi
nop
nop
xor $413, %rax
mov $59, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0xf9ea, %rcx
nop
inc %rdx
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1496a, %rcx
clflush (%rcx)
nop
xor %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm7
vmovups %ymm7, (%rcx)
nop
nop
nop
xor %r13, %r13
lea addresses_WC_ht+0x1296a, %rax
nop
nop
nop
nop
nop
and $39488, %rbp
vmovups (%rax), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %rcx
nop
nop
nop
sub $1887, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_A+0x19e6a, %r11
nop
dec %rdx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r11)
nop
nop
and $21977, %rdx

// Store
lea addresses_UC+0x1a46a, %r9
nop
nop
nop
nop
dec %r8
movb $0x51, (%r9)
nop
nop
nop
nop
and $27242, %rdi

// Faulty Load
lea addresses_US+0x1f86a, %r9
nop
nop
and %r11, %r11
mov (%r9), %rcx
lea oracles, %rdi
and $0xff, %rcx
shlq $12, %rcx
mov (%rdi,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'00': 15}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
