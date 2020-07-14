.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x149c7, %rsi
lea addresses_D_ht+0x173c7, %rdi
nop
nop
nop
nop
nop
inc %r11
mov $15, %rcx
rep movsb
nop
nop
nop
sub %rbx, %rbx
lea addresses_WT_ht+0x3547, %rcx
clflush (%rcx)
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%rcx)
nop
nop
and $51597, %rsi
lea addresses_UC_ht+0x10dc7, %rcx
nop
nop
nop
nop
sub %r8, %r8
movl $0x61626364, (%rcx)
nop
nop
nop
nop
xor $17415, %rsi
lea addresses_UC_ht+0xcbc7, %rdi
nop
nop
nop
nop
nop
xor $62047, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
dec %r14
lea addresses_D_ht+0x39c7, %rsi
lea addresses_WC_ht+0xdff7, %rdi
clflush (%rdi)
nop
nop
nop
nop
cmp %r15, %r15
mov $101, %rcx
rep movsw
nop
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_UC_ht+0x1d0c7, %r15
nop
nop
nop
nop
and %rsi, %rsi
mov $0x6162636465666768, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r15)
xor $23688, %rcx
lea addresses_A_ht+0x148c7, %r14
sub %rbx, %rbx
movups (%r14), %xmm3
vpextrq $0, %xmm3, %r8
nop
nop
nop
nop
nop
add $24540, %rbx
lea addresses_D_ht+0x1bf47, %rsi
nop
inc %rdi
movb $0x61, (%rsi)
nop
xor $32120, %r15
lea addresses_D_ht+0x131c7, %r8
nop
nop
nop
nop
nop
xor %r15, %r15
movb $0x61, (%r8)
nop
nop
nop
nop
nop
inc %rdi
lea addresses_A_ht+0xd1c7, %rcx
clflush (%rcx)
nop
sub %r11, %r11
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Store
lea addresses_normal+0x7687, %rbx
clflush (%rbx)
and %rbp, %rbp
movb $0x51, (%rbx)
nop
nop
add %r9, %r9

// Faulty Load
lea addresses_US+0xb1c7, %r8
nop
nop
nop
sub %r14, %r14
movaps (%r8), %xmm1
vpextrq $1, %xmm1, %rbp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_US', 'AVXalign': True, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 10}}
{'ff': 1, '46': 15607, '45': 6217, '3e': 2, '00': 2}
00 45 45 46 45 46 46 45 46 46 45 46 45 46 45 45 46 46 46 45 45 45 45 45 46 45 46 45 46 46 45 45 46 46 45 46 45 46 45 46 45 46 45 46 45 46 45 46 46 46 45 46 45 46 46 45 46 46 46 46 46 46 46 46 45 46 45 46 46 45 46 46 45 46 45 46 45 46 45 46 45 46 46 46 45 46 46 45 46 45 46 45 46 46 46 45 46 46 46 45 46 46 46 45 46 46 46 45 46 46 46 45 46 46 45 46 45 46 46 46 46 46 45 46 45 46 46 46 46 45 46 46 45 46 45 46 45 46 45 46 46 45 46 46 45 46 45 46 46 46 45 46 46 46 46 46 46 46 45 46 45 46 45 46 45 46 45 46 46 46 46 46 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 45 46 46 46 45 46 45 45 46 46 46 46 46 45 46 45 46 46 46 45 46 46 45 46 45 46 46 46 45 45 46 46 46 45 46 45 46 45 46 46 46 46 46 46 45 45 45 46 45 46 45 46 45 45 46 46 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 46 46 46 46 45 45 46 46 46 45 46 45 46 45 46 46 46 46 45 46 45 45 46 46 45 46 46 46 46 45 46 45 46 45 46 45 46 45 46 46 46 45 46 46 45 46 45 46 46 46 46 45 46 46 46 46 45 46 46 45 46 46 45 45 46 45 46 45 46 45 46 45 46 45 46 46 46 46 45 45 46 45 46 46 45 45 46 45 46 45 46 45 46 45 46 45 46 45 46 46 45 46 45 46 46 45 46 45 46 45 46 45 46 45 46 46 46 45 46 46 45 46 46 45 45 46 45 46 46 45 46 45 45 45 46 45 46 45 46 46 46 45 46 46 46 45 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 45 46 46 46 45 46 45 46 46 46 46 46 46 46 46 46 45 46 45 46 45 46 46 46 46 45 46 46 45 45 46 46 46 46 46 46 46 46 46 46 45 46 45 46 45 46 45 45 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 46 46 46 45 45 46 46 45 46 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 46 46 46 46 45 46 45 46 45 46 46 45 46 46 45 46 46 45 46 45 46 46 46 45 46 46 46 46 46 46 46 46 45 46 46 46 46 46 46 45 46 45 46 45 45 46 46 46 46 46 45 46 46 46 46 46 46 45 45 46 45 46 46 46 46 45 46 46 45 46 46 46 45 46 45 46 46 46 46 45 46 46 45 46 46 46 46 45 46 46 45 46 46 46 45 46 45 46 46 46 46 45 46 45 46 46 45 46 46 46 46 46 45 46 46 45 46 45 46 46 46 45 46 46 46 46 46 45 46 45 46 45 46 46 46 46 46 46 46 46 46 45 46 46 45 46 46 45 46 46 45 45 46 45 46 46 45 45 46 46 46 45 46 46 46 46 46 46 46 45 46 46 46 46 46 45 46 46 45 46 46 46 46 46 46 46 45 46 46 45 46 45 46 46 46 45 46 46 45 46 46 45 46 45 46 46 45 46 45 46 46 46 45 46 46 45 46 46 46 45 45 46 46 46 45 46 45 46 46 45 46 45 46 45 46 45 46 46 45 46 45 46 46 45 46 46 45 46 46 46 45 46 45 46 45 46 46 46 46 45 46 45 46 46 46 45 46 45 46 46 46 46 46 46 46 45 46 45 45 46 46 45 46 46 46 46 46 46 46 46 46 46 46 45 46 45 46 46 46 45 45 46 46 46 46 46 46 46 46 46 46 45 46 46 46 45 46 46 46 45 46 46 46 46 45 45 46 45 45 46 46 46 46 46 46 46 46 45 45 46 46 46 45 46 46 46 46 45 46 46 46 45 46 46 46 45 46 46 45 46 45 46 46 45 46 45 46 46 46 46 46 45 46 46 45 46 45 46 45 46 45 46 45 45 46 45 46 45 46 46 45 45 46 46 45 46 46 46 45 46 46 45 46 46 46 45 46 45 45 46 46 45 46 46 46 45 46 45 46 46 46 46 46 46 46 45 46 45 46 45 46 46 45 46 45 46 46 46 45 45 46 46 46 46 45 45 46 46 46 45 46 46 46 45 46 45 45 46 46 46 45 46 45 46 46 46 46 45 46 45 46 46 45 46 45 46
*/
