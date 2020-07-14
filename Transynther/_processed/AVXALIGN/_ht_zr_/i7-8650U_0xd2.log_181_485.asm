.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1bcb3, %rax
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x6162636465666768, %r11
movq %r11, (%rax)
nop
nop
nop
nop
sub $21361, %rsi
lea addresses_WT_ht+0x10213, %rsi
lea addresses_WT_ht+0x6293, %rdi
nop
nop
nop
nop
nop
xor $24972, %r15
mov $38, %rcx
rep movsb
dec %rdi
lea addresses_WC_ht+0x9593, %r11
nop
nop
nop
dec %rsi
mov (%r11), %r15d
nop
cmp %r11, %r11
lea addresses_WT_ht+0x9293, %rdi
nop
nop
nop
add %r15, %r15
movw $0x6162, (%rdi)
nop
nop
nop
nop
inc %rcx
lea addresses_normal_ht+0xf893, %rsi
lea addresses_A_ht+0x1ca93, %rdi
nop
add %rbp, %rbp
mov $37, %rcx
rep movsl
nop
nop
dec %r8
lea addresses_WC_ht+0x1bac3, %rcx
clflush (%rcx)
nop
nop
nop
nop
cmp $52458, %r11
mov $0x6162636465666768, %r8
movq %r8, %xmm4
movups %xmm4, (%rcx)
cmp $50200, %r11
lea addresses_A_ht+0x3993, %r15
nop
nop
nop
inc %rcx
mov $0x6162636465666768, %rax
movq %rax, (%r15)
cmp %rdi, %rdi
lea addresses_UC_ht+0x19193, %rsi
lea addresses_A_ht+0xc762, %rdi
clflush (%rdi)
nop
nop
sub $30462, %r11
mov $39, %rcx
rep movsb
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0xb76f, %rsi
lea addresses_WC_ht+0xf6b, %rdi
dec %r11
mov $51, %rcx
rep movsw
nop
nop
nop
cmp $6600, %rcx
lea addresses_WC_ht+0x1d093, %rsi
nop
cmp %r8, %r8
movw $0x6162, (%rsi)
nop
sub $58410, %rbp
lea addresses_normal_ht+0x1aa8b, %r15
dec %rax
mov (%r15), %r11
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0xf293, %rsi
lea addresses_WC_ht+0x137e1, %rdi
nop
cmp %r11, %r11
mov $36, %rcx
rep movsl
nop
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %rax
push %rcx
push %rsi

// Store
lea addresses_WT+0x140ff, %r15
nop
sub $11835, %r8
mov $0x5152535455565758, %rcx
movq %rcx, (%r15)
nop
nop
add %r11, %r11

// Faulty Load
mov $0xaa5150000000293, %rax
clflush (%rax)
nop
nop
add %r15, %r15
vmovaps (%rax), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
lea oracles, %rax
and $0xff, %r8
shlq $12, %r8
mov (%rax,%r8,1), %r8
pop %rsi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'44': 177, '00': 4}
44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 44 00 44
*/
