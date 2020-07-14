.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xcec7, %rbp
nop
nop
nop
nop
cmp $50180, %rax
and $0xffffffffffffffc0, %rbp
movaps (%rbp), %xmm4
vpextrq $1, %xmm4, %rsi
nop
nop
nop
inc %r11
lea addresses_WT_ht+0x164c7, %rsi
lea addresses_D_ht+0x12c7, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $60930, %r8
mov $104, %rcx
rep movsl
nop
cmp $5651, %rdi
lea addresses_D_ht+0x180c7, %rax
nop
nop
nop
cmp $64598, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rax)
nop
add $17595, %rax
lea addresses_UC_ht+0x1b6c7, %rsi
lea addresses_normal_ht+0x13ac7, %rdi
nop
nop
mfence
mov $21, %rcx
rep movsb
xor $8118, %r11
lea addresses_A_ht+0xe0c7, %rsi
nop
add %rdi, %rdi
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %rcx
lfence
lea addresses_WT_ht+0x187c7, %r11
clflush (%r11)
nop
nop
nop
nop
nop
and $64964, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r11)
dec %rsi
lea addresses_A_ht+0xbec7, %rax
dec %rsi
movb (%rax), %cl
nop
nop
sub $39132, %rcx
lea addresses_normal_ht+0x9767, %rcx
nop
nop
nop
nop
nop
inc %r11
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %r8
nop
nop
nop
add %rax, %rax
lea addresses_UC_ht+0xfdc7, %rax
nop
nop
cmp %rsi, %rsi
mov (%rax), %ecx
nop
nop
nop
sub %rdi, %rdi
lea addresses_A_ht+0x17577, %rcx
nop
nop
nop
nop
nop
mfence
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1a4c1, %rsi
lea addresses_normal_ht+0x1cbc7, %rdi
nop
nop
dec %r11
mov $88, %rcx
rep movsb
nop
add %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx

// Load
lea addresses_normal+0x126c7, %r11
nop
nop
nop
dec %r14
mov (%r11), %r13d
sub %rax, %rax

// Store
lea addresses_A+0x1e9af, %r13
nop
nop
nop
nop
nop
and $35277, %r15
mov $0x5152535455565758, %rcx
movq %rcx, %xmm5
movaps %xmm5, (%r13)
nop
nop
nop
nop
nop
inc %r11

// Store
lea addresses_RW+0xa3c7, %r13
nop
nop
nop
xor $17181, %r14
movb $0x51, (%r13)
cmp $28910, %r13

// Faulty Load
lea addresses_D+0xec7, %r13
nop
nop
nop
sub %r15, %r15
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'36': 6}
36 36 36 36 36 36
*/
