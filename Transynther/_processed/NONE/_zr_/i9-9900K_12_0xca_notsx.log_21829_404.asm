.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12486, %r15
clflush (%r15)
nop
nop
xor $6454, %rcx
movb (%r15), %r9b
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x5646, %rax
clflush (%rax)
add %rsi, %rsi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm4
vmovups %ymm4, (%rax)
sub %rbp, %rbp
lea addresses_D_ht+0x19786, %rsi
xor %r15, %r15
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
nop
and $58316, %r15
lea addresses_A_ht+0x49c6, %rsi
cmp $23423, %r15
movb $0x61, (%rsi)
nop
and $32678, %r9
lea addresses_D_ht+0x1e79a, %rax
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
and $0xffffffffffffffc0, %rax
movaps %xmm5, (%rax)
nop
nop
nop
and %rcx, %rcx
lea addresses_WT_ht+0x96e6, %rcx
nop
nop
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %r11
movq %r11, %xmm1
movups %xmm1, (%rcx)
nop
nop
and $56983, %r15
lea addresses_WT_ht+0x1a106, %r15
nop
xor $46887, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r15)
nop
nop
nop
and %r15, %r15
lea addresses_A_ht+0x16786, %r15
nop
nop
dec %r9
mov (%r15), %rbp
nop
nop
nop
add $36206, %r9
lea addresses_UC_ht+0x17516, %rbp
nop
nop
nop
cmp %r9, %r9
mov (%rbp), %r11d
xor %rcx, %rcx
lea addresses_normal_ht+0x1bb86, %rsi
lea addresses_A_ht+0x1929e, %rdi
nop
nop
nop
nop
and %rax, %rax
mov $20, %rcx
rep movsq
nop
nop
nop
nop
nop
and $29911, %r9
lea addresses_A_ht+0xda36, %r15
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r15), %r9w
nop
nop
nop
add $10703, %r11
lea addresses_A_ht+0xc475, %rsi
lea addresses_D_ht+0x1c586, %rdi
inc %r11
mov $25, %rcx
rep movsl
nop
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0xe9c0, %rbp
nop
nop
sub $55143, %rdi
mov $0x6162636465666768, %r11
movq %r11, %xmm7
movups %xmm7, (%rbp)
nop
nop
sub %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_A+0xd046, %r9
nop
cmp $61871, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%r9)
nop
nop
nop
nop
nop
cmp $19964, %r8

// Store
lea addresses_PSE+0x17f86, %r15
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
nop
nop
and $45237, %r8

// REPMOV
lea addresses_A+0x1a16, %rsi
lea addresses_WC+0xbb06, %rdi
nop
sub $24250, %r15
mov $63, %rcx
rep movsq
nop
add %rcx, %rcx

// Store
lea addresses_D+0x116ea, %r14
nop
inc %r15
movl $0x51525354, (%r14)
nop
nop
nop
nop
inc %rcx

// REPMOV
mov $0x15e, %rsi
lea addresses_D+0x1ee6, %rdi
nop
cmp %r8, %r8
mov $24, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $8376, %rdx

// Store
lea addresses_PSE+0x17f86, %r14
clflush (%r14)
nop
nop
nop
nop
nop
and $40075, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
vmovups %ymm2, (%r14)
nop
inc %rdx

// Load
lea addresses_A+0x8c1d, %r9
nop
nop
nop
nop
nop
sub $49763, %rdx
movups (%r9), %xmm6
vpextrq $0, %xmm6, %rcx
add $36166, %rsi

// Faulty Load
lea addresses_PSE+0x17f86, %rdx
nop
and %r15, %r15
vmovups (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rbx
lea oracles, %rdi
and $0xff, %rbx
shlq $12, %rbx
mov (%rdi,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A'}, 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_P'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': False, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': True, 'congruent': 1, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
