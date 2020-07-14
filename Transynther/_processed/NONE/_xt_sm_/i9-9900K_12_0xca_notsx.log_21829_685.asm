.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xde14, %rbp
nop
nop
nop
nop
nop
xor $55944, %r12
mov (%rbp), %r9
inc %r11
lea addresses_WC_ht+0x16714, %rsi
lea addresses_A_ht+0xcc14, %rdi
nop
nop
nop
xor %rbx, %rbx
mov $67, %rcx
rep movsb
nop
nop
add $27984, %rdi
lea addresses_WT_ht+0x1abd4, %r9
nop
and $42807, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%r9)
nop
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0x180d4, %rsi
lea addresses_A_ht+0x11714, %rdi
clflush (%rdi)
nop
and %r11, %r11
mov $27, %rcx
rep movsl
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_UC_ht+0x1d2d4, %rbx
nop
and $25797, %rcx
movb $0x61, (%rbx)
nop
nop
nop
sub $45375, %rsi
lea addresses_A_ht+0xaf4, %rsi
lea addresses_normal_ht+0x14814, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $111, %rcx
rep movsl
xor %rbp, %rbp
lea addresses_WT_ht+0x8808, %r11
nop
nop
xor %r9, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%r11)
nop
nop
add $35288, %rbp
lea addresses_normal_ht+0x136c, %r11
nop
nop
nop
cmp $28820, %rbp
mov $0x6162636465666768, %r12
movq %r12, %xmm2
movups %xmm2, (%r11)
nop
xor $35813, %rbx
lea addresses_normal_ht+0x10694, %rsi
lea addresses_A_ht+0x1d914, %rdi
nop
cmp %r12, %r12
mov $80, %rcx
rep movsl
nop
nop
and $32671, %rbp
lea addresses_WT_ht+0xc114, %rsi
lea addresses_WC_ht+0x1eb5c, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $86, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $53464, %r9
lea addresses_WT_ht+0x1b114, %rbp
clflush (%rbp)
nop
nop
nop
nop
inc %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%rbp)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0x11614, %rsi
lea addresses_D_ht+0x1e4f8, %rdi
nop
nop
nop
nop
sub $51413, %r11
mov $100, %rcx
rep movsq
add %rbx, %rbx
lea addresses_UC_ht+0xc414, %rsi
lea addresses_WT_ht+0x1749c, %rdi
nop
nop
nop
nop
nop
sub $26614, %r12
mov $84, %rcx
rep movsl
nop
nop
nop
nop
xor %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rax
push %rsi

// Load
lea addresses_RW+0x137d4, %r11
nop
nop
nop
nop
cmp $11111, %rsi
movups (%r11), %xmm4
vpextrq $0, %xmm4, %r10
nop
nop
xor %rsi, %rsi

// Store
lea addresses_UC+0xf014, %r15
dec %rax
mov $0x5152535455565758, %r9
movq %r9, %xmm7
vmovups %ymm7, (%r15)
and %rsi, %rsi

// Load
mov $0x474, %rsi
nop
nop
sub $8011, %rax
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r13
nop
nop
nop
and $4304, %r13

// Store
mov $0xc94, %r11
nop
sub $27615, %r13
movw $0x5152, (%r11)
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_D+0x5c14, %r13
nop
nop
nop
xor $3778, %rax
movb $0x51, (%r13)
nop
nop
nop
nop
nop
inc %r10

// Store
lea addresses_normal+0x165d4, %r15
nop
nop
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movups %xmm4, (%r15)
nop
nop
nop
nop
add $42454, %r9

// Store
mov $0x814, %r13
nop
nop
nop
sub $5016, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm4
movups %xmm4, (%r13)
nop
nop
nop
nop
nop
xor $43286, %r13

// Store
lea addresses_PSE+0x4014, %r15
nop
nop
nop
nop
nop
sub $57835, %rsi
mov $0x5152535455565758, %r13
movq %r13, (%r15)
nop
nop
xor $28365, %r11

// Store
lea addresses_US+0x1f614, %r13
nop
nop
nop
nop
nop
and $5598, %rax
mov $0x5152535455565758, %rsi
movq %rsi, (%r13)
nop
nop
nop
nop
sub $39671, %rax

// Store
lea addresses_WT+0xf514, %rsi
nop
inc %r10
movw $0x5152, (%rsi)
nop
dec %r10

// Faulty Load
lea addresses_PSE+0x4014, %r11
nop
nop
nop
nop
xor %r10, %r10
mov (%r11), %eax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_P', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 6, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 6}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_D_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}, 'dst': {'same': True, 'congruent': 3, 'type': 'addresses_WT_ht'}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
