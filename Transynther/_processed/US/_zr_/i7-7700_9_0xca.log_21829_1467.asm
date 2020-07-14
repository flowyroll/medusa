.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1bd59, %r10
nop
nop
nop
nop
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
and $13757, %r9
lea addresses_normal_ht+0xd859, %rsi
lea addresses_A_ht+0x12459, %rdi
clflush (%rsi)
and %rdx, %rdx
mov $85, %rcx
rep movsq
nop
sub $63931, %rcx
lea addresses_normal_ht+0x15999, %rsi
lea addresses_WC_ht+0xeea1, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $6, %rcx
rep movsb
nop
nop
cmp $41016, %r9
lea addresses_WC_ht+0xfe35, %rsi
nop
and $43592, %r9
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%rsi)
nop
add %rdi, %rdi
lea addresses_UC_ht+0x6e59, %rcx
cmp $8107, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
and $0xffffffffffffffc0, %rcx
movntdq %xmm2, (%rcx)
nop
nop
nop
nop
nop
sub $18685, %r9
lea addresses_UC_ht+0x17259, %r10
nop
nop
add %r15, %r15
mov (%r10), %rsi
nop
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x16159, %rdx
nop
nop
add %rcx, %rcx
movups (%rdx), %xmm2
vpextrq $1, %xmm2, %rsi
cmp $56977, %rdi
lea addresses_WC_ht+0x12659, %r10
nop
nop
nop
sub $33093, %rcx
movl $0x61626364, (%r10)
nop
sub $35957, %r9
lea addresses_normal_ht+0x1b659, %r9
add $37595, %r10
movb (%r9), %dl
nop
nop
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x1a659, %rcx
nop
xor $26759, %r15
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
nop
and $54168, %r10
lea addresses_WT_ht+0x14a59, %rdx
nop
nop
nop
nop
add $61461, %rdi
mov (%rdx), %r9
nop
nop
nop
nop
dec %r15
lea addresses_UC_ht+0x116d9, %rsi
lea addresses_A_ht+0xc599, %rdi
nop
nop
nop
xor $35511, %rax
mov $101, %rcx
rep movsq
nop
nop
nop
nop
nop
add $29729, %r9
lea addresses_normal_ht+0x1efd9, %r9
nop
nop
and %r15, %r15
movw $0x6162, (%r9)
nop
nop
nop
and %r9, %r9
lea addresses_A_ht+0xca59, %rsi
lea addresses_WT_ht+0x14a09, %rdi
cmp $8334, %r10
mov $26, %rcx
rep movsq
nop
xor %r15, %r15
lea addresses_WT_ht+0x13e59, %r15
nop
nop
nop
xor %r9, %r9
movw $0x6162, (%r15)
nop
nop
nop
nop
xor $6140, %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Store
mov $0x20d8bf0000000d59, %rdi
clflush (%rdi)
nop
nop
nop
add $10006, %r8
mov $0x5152535455565758, %rbx
movq %rbx, %xmm5
vmovups %ymm5, (%rdi)
nop
nop
nop
nop
xor $62966, %r11

// Store
mov $0x570c7b0000000359, %r10
nop
nop
nop
dec %rax
mov $0x5152535455565758, %rdi
movq %rdi, %xmm4
vmovups %ymm4, (%r10)
nop
nop
cmp %r11, %r11

// Store
mov $0x1e50dd0000000659, %r9
nop
xor %rbx, %rbx
movb $0x51, (%r9)
nop
nop
nop
nop
nop
and %rbx, %rbx

// Load
lea addresses_UC+0x1d259, %r8
sub $11137, %r10
mov (%r8), %rax
cmp %rax, %rax

// Store
lea addresses_PSE+0x1dd9, %r8
nop
cmp %r9, %r9
movw $0x5152, (%r8)
nop
nop
nop
and $18871, %r11

// Faulty Load
lea addresses_US+0x16a59, %rbx
nop
nop
nop
nop
nop
and %r10, %r10
mov (%rbx), %r8w
lea oracles, %r10
and $0xff, %r8
shlq $12, %r8
mov (%r10,%r8,1), %r8
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_PSE'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': True, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
