.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xda1f, %rsi
lea addresses_normal_ht+0x162df, %rdi
nop
nop
add $5859, %rbp
mov $70, %rcx
rep movsl
nop
nop
nop
nop
cmp %r15, %r15
lea addresses_normal_ht+0x21d3, %r8
and %r9, %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%r8)
sub $30060, %r8
lea addresses_UC_ht+0xedf, %rsi
lea addresses_A_ht+0x166df, %rdi
nop
nop
cmp %r8, %r8
mov $71, %rcx
rep movsl
nop
nop
nop
nop
add $47241, %r8
lea addresses_A_ht+0xd6df, %rdi
nop
nop
nop
nop
cmp $59830, %r15
movl $0x61626364, (%rdi)
nop
nop
cmp $49696, %rbp
lea addresses_WT_ht+0xf15f, %rsi
lea addresses_UC_ht+0x1a53f, %rdi
cmp %r8, %r8
mov $27, %rcx
rep movsw
nop
nop
sub %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %r9
push %rax
push %rcx
push %rdx
push %rsi

// Store
lea addresses_normal+0x12aef, %rsi
nop
nop
nop
nop
nop
and %r8, %r8
movl $0x51525354, (%rsi)
nop
nop
nop
inc %r13

// Store
mov $0x1b4dee00000002df, %rcx
nop
nop
nop
nop
sub $28311, %rax
movl $0x51525354, (%rcx)
nop
nop
nop
nop
sub $21261, %rdx

// Store
lea addresses_WC+0xbcdf, %rdx
nop
nop
nop
and %rsi, %rsi
movl $0x51525354, (%rdx)
nop
nop
inc %r9

// Store
lea addresses_D+0x14df, %r8
clflush (%r8)
inc %r9
movw $0x5152, (%r8)
xor %r9, %r9

// Load
lea addresses_PSE+0x19adf, %r9
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r9), %r8d
nop
nop
nop
add %r8, %r8

// Store
lea addresses_WC+0x1098f, %r8
nop
nop
cmp %rax, %rax
mov $0x5152535455565758, %rdx
movq %rdx, %xmm1
movups %xmm1, (%r8)
nop
nop
nop
cmp $6445, %rax

// Faulty Load
mov $0x1b4dee00000002df, %rdx
nop
xor %r9, %r9
movups (%rdx), %xmm7
vpextrq $1, %xmm7, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 4}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 9}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': True, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 5}}
{'44': 7935, '00': 13894}
00 00 44 44 00 00 00 44 44 00 00 44 00 00 44 44 00 00 44 44 44 44 00 00 00 44 00 00 44 00 00 44 00 00 00 44 00 44 44 00 00 00 00 44 44 00 44 44 00 00 00 44 44 00 00 44 00 00 44 44 44 44 00 00 00 00 44 00 44 00 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 44 00 44 00 00 44 44 44 44 00 00 44 00 00 44 00 00 00 00 44 00 00 44 44 44 00 00 00 00 00 44 44 00 00 00 00 00 44 00 44 00 44 00 44 00 00 00 00 44 44 44 44 44 00 44 00 00 00 00 00 44 44 44 00 00 44 00 00 00 00 44 00 00 44 44 44 44 00 00 44 00 44 44 00 00 00 00 44 00 00 00 44 44 00 00 00 44 00 00 00 00 00 44 00 44 44 00 00 00 44 00 00 00 00 00 44 00 00 00 44 44 44 00 44 44 44 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 44 00 00 00 00 44 44 00 00 44 44 44 44 00 00 00 44 00 44 00 00 00 00 00 00 00 00 00 00 44 00 00 44 00 44 00 00 00 00 00 44 00 00 00 44 44 00 44 00 00 00 00 44 00 44 00 00 44 44 00 44 44 00 00 00 00 44 00 44 00 44 44 44 44 00 44 00 44 44 00 44 00 44 00 44 44 00 00 00 44 44 00 00 00 00 44 00 00 00 00 00 44 44 44 00 44 44 00 00 00 00 00 44 00 00 44 00 44 44 00 44 00 00 00 00 44 44 44 00 00 00 00 00 00 44 00 00 44 00 00 00 44 00 44 00 00 44 00 00 00 44 00 00 00 00 00 00 44 44 44 44 44 00 00 00 44 00 00 00 44 00 44 00 00 44 00 44 00 44 00 44 00 44 44 00 44 00 00 00 00 44 00 44 44 00 00 00 00 44 44 00 44 44 44 44 00 00 44 00 00 00 00 00 00 44 00 00 00 00 44 00 44 00 00 00 00 00 00 00 44 44 00 44 00 00 44 00 44 00 44 00 44 00 00 00 00 00 00 00 00 44 00 00 00 44 00 44 44 00 00 00 00 44 00 44 44 00 00 44 44 00 44 44 00 00 00 00 44 00 00 00 00 44 00 44 00 00 00 44 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 44 44 00 44 00 00 44 00 44 00 44 44 00 44 00 44 44 00 00 00 00 00 00 44 00 00 00 44 00 00 44 00 00 00 00 00 00 44 44 44 00 44 00 44 44 44 00 00 00 00 44 00 00 44 44 44 00 00 44 44 44 44 00 00 00 44 44 00 00 44 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 44 00 44 00 00 00 44 44 00 44 44 00 00 44 00 44 00 00 00 44 44 44 00 00 00 44 44 44 00 00 00 00 00 00 44 44 44 00 00 00 00 00 00 00 00 00 44 44 00 00 44 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 44 00 00 44 44 44 00 00 44 00 44 44 00 44 00 00 44 00 00 00 00 44 00 00 00 00 00 44 00 44 44 00 44 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 44 00 44 00 00 00 00 00 00 44 44 44 00 44 00 00 44 00 00 00 00 44 00 00 00 44 44 44 44 00 00 44 00 00 00 00 44 00 00 44 44 44 00 00 00 00 00 44 44 44 00 00 00 00 44 44 00 44 44 00 00 00 44 00 00 00 00 44 00 00 44 00 44 00 00 44 44 44 00 44 00 44 44 00 44 00 00 00 00 44 44 00 44 00 44 00 44 44 44 44 00 00 00 00 44 00 00 44 00 44 00 44 44 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 44 44 44 00 44 00 44 00 00 00 44 00 00 44 44 00 00 00 00 00 00 44 44 00 00 00 00 44 00 44 00 00 44 00 44 00 44 00 00 44 44 44 00 44 00 00 44 00 00 00 44 00 00 00 00 44 00 44 00 44 00 00 00 00 44 00 00 00 44 44 00 00 44 44 44 00 00 44 00 00 00 00 00 44 44 44 00 44 44 00 00 00 44 44 00 00 00 44 00 44 00 00 00 00 00 00 00 44 00 00 00 00 44 44 00 44 44 00 44
*/
