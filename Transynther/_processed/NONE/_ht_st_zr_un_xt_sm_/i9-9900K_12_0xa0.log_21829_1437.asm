.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x72c5, %r14
clflush (%r14)
nop
nop
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%r14)
nop
add %rdi, %rdi
lea addresses_A_ht+0xe248, %rsi
lea addresses_D_ht+0x2145, %rdi
xor $15126, %rbx
mov $30, %rcx
rep movsl
add %rdx, %rdx
lea addresses_D_ht+0x19a3c, %rbx
nop
nop
nop
and $12231, %rcx
mov (%rbx), %r14
nop
nop
add $25731, %rcx
lea addresses_UC_ht+0xa0e5, %rsi
lea addresses_normal_ht+0xd7c5, %rdi
clflush (%rsi)
cmp $21584, %r12
mov $45, %rcx
rep movsw
nop
nop
cmp %r12, %r12
lea addresses_WT_ht+0x187c5, %rsi
nop
nop
nop
nop
nop
and %r11, %r11
movb $0x61, (%rsi)
nop
cmp $18782, %r14
lea addresses_WC_ht+0xd3c5, %rsi
lea addresses_A_ht+0x7bc5, %rdi
clflush (%rsi)
nop
nop
inc %rbx
mov $18, %rcx
rep movsb
nop
nop
nop
nop
nop
add $62176, %rcx
lea addresses_WT_ht+0x1bf05, %r12
dec %rbx
mov (%r12), %di
nop
nop
add %r12, %r12
lea addresses_WT_ht+0xdbc5, %r14
nop
nop
nop
nop
and $2556, %r12
mov (%r14), %di
nop
nop
nop
nop
add %rbx, %rbx
lea addresses_A_ht+0x16945, %rdi
xor $20344, %rdx
mov (%rdi), %ebx
nop
add %rsi, %rsi
lea addresses_UC_ht+0x85, %rdi
nop
nop
nop
nop
cmp %rsi, %rsi
movw $0x6162, (%rdi)
nop
nop
nop
cmp $57019, %r11
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
mov $0x265, %rsi
lea addresses_WC+0xebc5, %rdi
nop
nop
nop
xor $46085, %rbx
mov $41, %rcx
rep movsb
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WC+0xebc5, %rcx
nop
nop
sub %rbp, %rbp
movw $0x5152, (%rcx)
nop
nop
sub $32425, %rcx

// Store
mov $0x53d, %rdx
nop
nop
nop
nop
nop
sub %r9, %r9
movw $0x5152, (%rdx)
nop
nop
nop
add %r9, %r9

// Store
lea addresses_RW+0x72c5, %r9
nop
inc %rdx
movb $0x51, (%r9)
nop
nop
nop
inc %rcx

// Load
lea addresses_D+0x1d3c5, %rdx
nop
xor %rcx, %rcx
mov (%rdx), %bp
xor $51206, %rsi

// Load
lea addresses_A+0xdec, %rcx
nop
nop
add %rsi, %rsi
mov (%rcx), %rbp
nop
inc %r9

// Store
mov $0xbc5, %r9
nop
nop
nop
and %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, (%r9)
nop
and %r9, %r9

// Faulty Load
lea addresses_WC+0xebc5, %rcx
nop
nop
nop
nop
and $63467, %rdx
mov (%rcx), %ebp
lea oracles, %rdi
and $0xff, %rbp
shlq $12, %rbp
mov (%rdi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 0, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_D', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'src': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}}
{'a4': 3, '0a': 1, 'b2': 1, '48': 1, '32': 1, '20': 3, '4c': 1, '42': 2, '90': 3, '3e': 4, '1e': 2, '3a': 3, '46': 6, '28': 3, '96': 1, '6c': 3, '5c': 6, 'ca': 2, 'd2': 1, 'd8': 2, '60': 2, 'f0': 2, '0c': 2, '22': 2, '5a': 7, '64': 2, '94': 3, '40': 4, 'd0': 2, '04': 1, '16': 6, 'a0': 1, 'b0': 5, 'ac': 1, '98': 3, '8e': 1, '7a': 3, 'ee': 1, 'aa': 1, '34': 3, 'c4': 1, '36': 2, '08': 1, 'ea': 3, 'da': 2, 'c0': 3, '12': 1, 'ae': 2, '52': 5698, 'd4': 2, '6a': 2, '70': 2, '56': 10, 'fe': 1, 'e0': 1, '44': 3, '86': 1, '58': 15870, '5e': 1, '00': 18, '3c': 1, '0e': 1, '74': 2, '6e': 2, 'f8': 2, '14': 2, '18': 2, '7e': 3, 'e2': 2, 'fa': 1, 'ec': 1, '4e': 1, 'dc': 5, 'fc': 3, 'e8': 2, '54': 7, '50': 3, '68': 1, '62': 5, '7c': 1, '9e': 2, 'b4': 2, 'e4': 1, '88': 6, '80': 4, '06': 1, 'bc': 2, '10': 3, 'a2': 2, 'e6': 3, 'f2': 2, 'be': 1, 'd6': 2, 'cc': 1, '24': 3, '2e': 2, '30': 2, 'a8': 5, '78': 1, 'c8': 2, '66': 1, '82': 3, '92': 1, '38': 2, '2c': 2, 'ce': 1}
58 52 52 52 58 58 58 58 52 58 58 58 58 58 58 52 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 52 58 58 52 58 58 58 58 58 52 58 52 58 58 58 58 58 52 58 58 58 58 52 58 58 58 58 58 58 58 52 58 58 58 52 58 58 52 58 52 58 58 58 58 58 58 58 58 58 58 52 58 58 58 52 58 58 58 52 80 58 58 58 58 58 58 58 58 58 52 52 52 58 58 58 58 58 58 58 58 52 52 58 58 58 58 58 58 58 58 58 58 58 52 58 52 58 58 58 58 58 52 58 52 52 58 58 58 58 58 58 58 58 58 52 58 58 58 52 58 58 52 52 52 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 52 58 58 52 58 58 52 58 52 58 58 58 52 52 52 58 52 58 58 58 58 58 52 52 58 58 58 58 52 58 58 58 58 52 58 58 52 58 52 58 58 52 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 52 52 52 52 58 58 d4 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 52 58 58 58 58 58 5c 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 52 58 52 58 52 52 52 58 58 52 52 58 58 52 58 58 58 58 58 58 58 52 52 58 58 52 52 58 58 58 58 58 58 58 52 58 58 58 52 52 58 58 58 58 52 58 58 58 52 58 52 58 58 58 58 52 58 58 58 58 58 58 58 58 52 58 52 58 58 52 52 58 58 58 52 58 58 58 52 58 58 52 52 52 58 58 58 52 58 58 58 58 52 58 58 58 52 52 58 58 58 58 58 58 58 52 52 58 58 58 52 58 58 52 58 58 52 52 58 58 58 58 52 58 52 52 58 58 58 58 58 58 52 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 52 58 52 52 58 58 52 58 58 58 58 58 52 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 52 58 58 58 58 58 58 52 52 52 58 52 58 58 58 58 58 58 58 58 58 58 58 52 58 58 52 58 52 52 58 58 58 58 52 58 52 58 58 52 52 58 58 52 52 58 58 58 52 58 58 58 58 58 58 58 52 58 58 52 58 58 58 52 58 58 52 52 58 52 58 52 58 58 52 58 58 58 58 58 58 52 58 58 52 58 52 58 58 52 52 58 58 58 58 58 58 58 52 58 58 1e 58 58 58 58 58 58 52 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 52 58 16 58 58 58 52 58 52 58 58 58 58 58 52 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 52 58 58 58 58 58 52 58 52 58 58 58 58 58 52 52 58 58 52 58 58 52 58 58 52 52 52 58 58 58 58 58 52 52 58 52 58 58 52 58 58 52 58 52 58 58 52 58 58 58 52 58 58 58 52 58 58 58 58 58 58 52 52 52 58 58 52 52 58 52 52 52 58 58 58 58 52 58 52 58 52 58 58 58 58 58 58 58 58 58 58 52 52 58 58 58 58 52 52 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 52 52 52 58 58 58 58 58 58 52 58 52 58 58 52 58 58 58 52 58 58 58 52 52 58 58 58 52 58 58 58 58 58 58 52 52 52 58 58 58 58 58 58 58 5c 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 52 58 52 7a 58 52 58 58 52 58 58 58 58 58 58 52 58 58 52 58 58 58 58 58 58 58 58 58 52 52 58 52 58 58 58 58 52 58 58 58 58 58 52 52 58 58 58 58 58 58 52 58 58 58 58 58 58 52 52 58 52 58 52 58 52 58 58 58 58 58 58 58 58 52 58 58 58 52 52 52 58 52 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
