.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x32b3, %rdi
nop
nop
xor %rax, %rax
mov (%rdi), %r11d
nop
sub %rbx, %rbx
lea addresses_D_ht+0x925, %rsi
lea addresses_WT_ht+0x191a5, %rdi
nop
nop
nop
cmp $30739, %r12
mov $115, %rcx
rep movsw
xor %r11, %r11
lea addresses_UC_ht+0x11a9d, %rsi
lea addresses_normal_ht+0xd605, %rdi
cmp $34146, %rbx
mov $42, %rcx
rep movsb
cmp %r12, %r12
lea addresses_UC_ht+0x16aa5, %rcx
nop
inc %r11
movb (%rcx), %r12b
nop
nop
sub %r12, %r12
lea addresses_WC_ht+0x17365, %rax
nop
nop
nop
nop
nop
sub $51218, %rdi
mov (%rax), %cx
nop
add %rdi, %rdi
lea addresses_WT_ht+0x18825, %rsi
nop
nop
nop
nop
nop
add $18551, %r11
mov (%rsi), %r12
nop
nop
nop
nop
nop
xor $55791, %rcx
lea addresses_A_ht+0xc8a5, %rax
nop
nop
nop
nop
cmp $5752, %r11
mov (%rax), %r12w
dec %r12
lea addresses_UC_ht+0x4130, %rsi
clflush (%rsi)
nop
cmp %rbx, %rbx
movb $0x61, (%rsi)
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_normal_ht+0x95b5, %rsi
lea addresses_D_ht+0x18df5, %rdi
nop
nop
nop
cmp %rdx, %rdx
mov $38, %rcx
rep movsq
nop
nop
nop
nop
nop
add $64255, %rax
lea addresses_UC_ht+0xef25, %rdi
inc %rax
movl $0x61626364, (%rdi)
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0x17d25, %rdx
nop
nop
nop
nop
add $44576, %rsi
movb (%rdx), %r12b
add %rcx, %rcx
lea addresses_WC_ht+0x16d25, %rsi
lea addresses_normal_ht+0x13a39, %rdi
clflush (%rdi)
nop
sub $3186, %rdx
mov $66, %rcx
rep movsq
nop
inc %rdx
lea addresses_A_ht+0x9f25, %rsi
nop
nop
nop
nop
nop
xor %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
cmp $35719, %rdx
lea addresses_D_ht+0xf925, %rdi
nop
nop
nop
nop
inc %rsi
mov $0x6162636465666768, %rax
movq %rax, %xmm3
movups %xmm3, (%rdi)
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r9
push %rax
push %rbp
push %rsi

// Faulty Load
lea addresses_PSE+0xd125, %rsi
cmp $26151, %rbp
vmovups (%rsi), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r9
lea oracles, %rsi
and $0xff, %r9
shlq $12, %r9
mov (%rsi,%r9,1), %r9
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'33': 121}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
