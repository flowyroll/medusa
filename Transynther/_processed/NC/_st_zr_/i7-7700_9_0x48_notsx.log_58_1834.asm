.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x15427, %r10
nop
inc %r8
movl $0x61626364, (%r10)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_A_ht+0xd827, %r13
nop
nop
nop
nop
and $25220, %rbx
mov $0x6162636465666768, %rbp
movq %rbp, (%r13)
xor $8605, %r10
lea addresses_D_ht+0xd127, %r8
clflush (%r8)
xor $2391, %r10
mov (%r8), %r13w
nop
nop
nop
dec %r8
lea addresses_normal_ht+0x69f5, %rsi
lea addresses_normal_ht+0x1a827, %rdi
cmp %r10, %r10
mov $45, %rcx
rep movsq
nop
cmp $64648, %r10
lea addresses_WC_ht+0xbd0f, %r8
clflush (%r8)
nop
nop
and $19657, %r13
movb $0x61, (%r8)
xor %rdi, %rdi
lea addresses_A_ht+0x18127, %rsi
lea addresses_A_ht+0x1327, %rdi
nop
nop
nop
nop
dec %rdx
mov $17, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_UC_ht+0xb737, %rsi
lea addresses_A_ht+0xf483, %rdi
nop
nop
nop
nop
nop
xor %r10, %r10
mov $17, %rcx
rep movsw
nop
nop
inc %rdx
lea addresses_WT_ht+0x1db27, %rdx
nop
nop
nop
nop
xor %rcx, %rcx
mov (%rdx), %esi
nop
nop
add $6813, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %rax
push %rbp
push %rcx
push %rdi
push %rdx

// Store
lea addresses_normal+0x18227, %rbp
nop
nop
nop
add %rcx, %rcx
movw $0x5152, (%rbp)
nop
nop
nop
xor %rax, %rax

// Load
mov $0x31b9c40000000117, %rdx
nop
nop
nop
sub %rdi, %rdi
mov (%rdx), %r11d
nop
and $3500, %rcx

// Store
mov $0x127, %r10
nop
inc %r11
movb $0x51, (%r10)
sub %rcx, %rcx

// Store
lea addresses_WC+0x1f2ef, %rbp
nop
nop
nop
nop
inc %rdx
movb $0x51, (%rbp)

// Exception!!!
mov (0), %rax
add $4317, %rbp

// Store
mov $0x727, %r11
nop
nop
cmp $21839, %rbp
movl $0x51525354, (%r11)
sub $47630, %rdi

// Store
lea addresses_normal+0xbd27, %rax
cmp $17382, %rdx
movb $0x51, (%rax)
nop
nop
nop
nop
xor $44746, %rbp

// Store
lea addresses_UC+0xd4a7, %rbp
nop
nop
cmp %rdi, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm6
movups %xmm6, (%rbp)
nop
nop
nop
xor %r10, %r10

// Faulty Load
mov $0x46d23f0000000d27, %rax
nop
nop
nop
cmp %r10, %r10
mov (%rax), %edx
lea oracles, %r10
and $0xff, %rdx
shlq $12, %rdx
mov (%r10,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_P', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 10}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'00': 4, '51': 54}
51 51 51 51 00 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51
*/
