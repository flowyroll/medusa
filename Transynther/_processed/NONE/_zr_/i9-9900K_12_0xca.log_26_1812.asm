.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x18c38, %rsi
lea addresses_A_ht+0x638, %rdi
nop
nop
cmp %r11, %r11
mov $53, %rcx
rep movsb
sub %r11, %r11
lea addresses_normal_ht+0xc000, %rsi
lea addresses_UC_ht+0xb638, %rdi
nop
nop
nop
nop
xor $62636, %rbx
mov $73, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_WT_ht+0x14238, %rsi
lea addresses_D_ht+0xc34, %rdi
nop
nop
add %r12, %r12
mov $56, %rcx
rep movsq
nop
nop
nop
nop
xor $62372, %r11
lea addresses_A_ht+0xa038, %rsi
lea addresses_WT_ht+0x4872, %rdi
nop
nop
nop
add $34900, %rax
mov $68, %rcx
rep movsl
nop
nop
nop
nop
cmp $20858, %rdi
lea addresses_D_ht+0x14b28, %rsi
xor $43208, %rbx
mov $0x6162636465666768, %r12
movq %r12, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x92f8, %rdi
nop
nop
nop
nop
sub $32618, %rcx
mov $0x6162636465666768, %r11
movq %r11, (%rdi)
nop
nop
nop
sub $53807, %r12
lea addresses_UC_ht+0x16297, %rax
nop
nop
nop
nop
and $18264, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rax)
nop
nop
nop
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1b7f8, %rsi
lea addresses_UC_ht+0x8438, %rdi
nop
nop
nop
nop
inc %rbx
mov $9, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %r11, %r11
lea addresses_WT_ht+0xf578, %r12
clflush (%r12)
nop
nop
nop
sub %rax, %rax
movw $0x6162, (%r12)
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0xb438, %rbx
nop
cmp %rax, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
nop
cmp $41440, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r9
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Load
lea addresses_RW+0x161f8, %rdx
nop
sub %rcx, %rcx
vmovups (%rdx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
nop
nop
nop
dec %r9

// Store
lea addresses_WT+0x15db8, %rdx
nop
cmp $37193, %r14
movw $0x5152, (%rdx)
nop
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_WT+0x1d8b8, %rcx
nop
nop
nop
and $9829, %rbp
mov (%rcx), %si
cmp $56054, %r14

// Load
lea addresses_normal+0x848, %rbp
and $43199, %rsi
movb (%rbp), %r14b
inc %r9

// Store
lea addresses_normal+0x10571, %r9
nop
nop
nop
nop
nop
add $64609, %rdx
mov $0x5152535455565758, %r14
movq %r14, (%r9)
nop
dec %r9

// Load
lea addresses_UC+0xf438, %rsi
nop
nop
nop
xor $707, %rcx
movups (%rsi), %xmm3
vpextrq $0, %xmm3, %r9
nop
inc %rsi

// Load
lea addresses_RW+0x18b88, %rcx
nop
nop
nop
nop
add $21355, %rsi
vmovups (%rcx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
cmp %rsi, %rsi

// Store
mov $0x79284400000004c8, %rdx
nop
nop
nop
and $24295, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%rdx)
and %rdx, %rdx

// Store
mov $0x42134700000003b8, %rcx
nop
nop
nop
sub %r14, %r14
movb $0x51, (%rcx)
nop
add %rdx, %rdx

// Faulty Load
lea addresses_WT+0xc438, %rbp
clflush (%rbp)
nop
nop
nop
nop
and %r9, %r9
mov (%rbp), %ecx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 7}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 11}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 9}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_normal_ht', 'congruent': 2}, 'dst': {'same': False, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_A_ht', 'congruent': 10}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 6}, 'dst': {'same': True, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_WT_ht', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 10}}
{'00': 26}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
